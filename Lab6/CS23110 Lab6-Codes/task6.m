% Read the image (make sure 'football.jpg' is in your folder)
img = imread('football.jpg');

% Safety Check: Convert to grayscale only if it is a color (RGB) image
if size(img, 3) == 3
    grayImg = rgb2gray(img);
else
    grayImg = img;
end

% --- 1. Image Enhancement (Median Filter) ---
% Add artificial "salt & pepper" noise (black and white dots) to test the filter
noisyImg = imnoise(grayImg, 'salt & pepper', 0.05);

% Apply median filter to clean the noise
enhancedImg = medfilt2(noisyImg);

% --- 2. Edge Detection (Prewitt vs Sobel) ---
% The lab manual asks to apply a new filter (Prewitt) and compare it to Sobel
prewittEdges = edge(grayImg, 'prewitt');
sobelEdges = edge(grayImg, 'sobel');

% --- 3. Display Results in a 2x2 Grid ---
figure;

% Top Row: Enhancement
subplot(2,2,1); imshow(noisyImg); title('Noisy Image (Salt & Pepper)');
subplot(2,2,2); imshow(enhancedImg); title('Cleaned with Median Filter');

% Bottom Row: Edge Detection Comparison
subplot(2,2,3); imshow(prewittEdges); title('Prewitt Edge Detection');
subplot(2,2,4); imshow(sobelEdges); title('Sobel Edge Detection');