% --- Part 1: Region of Interest (Masking) ---
% Make sure your file names match exactly what you saved
img = imread('football1.jpg'); 
mask = imread('mask.bmp');

% Safety Check 1: Convert main image to grayscale ONLY if it is RGB
if size(img, 3) == 3
    grayImg = rgb2gray(img);
else
    grayImg = img; % It's already grayscale!
end

% Safety Check 2: Convert mask to grayscale ONLY if it is RGB
if size(mask, 3) == 3
    mask = rgb2gray(mask);
end

% Resize mask to perfectly match the main image dimensions
[rows, cols] = size(grayImg);
mask = imresize(mask, [rows, cols]);

% Convert mask strictly to binary (1s and 0s)
bwMask = im2bw(mask);

% Multiply original by the binary mask
roiImg = uint8(grayImg) .* uint8(bwMask);

% Display Part 1 Results
figure;
subplot(1,3,1); imshow(grayImg); title('Main Image');
subplot(1,3,2); imshow(bwMask); title('Binary Mask');
subplot(1,3,3); imshow(roiImg); title('Masked Result');


% --- Part 2: Change Detection (Subtraction) ---
% Read both scenes
scene1 = imread('scene_time1.jpg');
scene2 = imread('scene_time2.jpg');

% Safety check: Convert to grayscale if necessary
if size(scene1, 3) == 3
    scene1 = rgb2gray(scene1);
end
if size(scene2, 3) == 3
    scene2 = rgb2gray(scene2);
end

% Resize Scene 2 to match Scene 1
[rows2, cols2] = size(scene1);
scene2 = imresize(scene2, [rows2, cols2]);

% Subtract the two images
diffImg = abs(double(scene1) - double(scene2));

% Display Part 2 Results
figure;
subplot(1,2,1); imshow(scene1); title('Original Scene');
subplot(1,2,2); imshow(uint8(diffImg)); title('Detected Changes');