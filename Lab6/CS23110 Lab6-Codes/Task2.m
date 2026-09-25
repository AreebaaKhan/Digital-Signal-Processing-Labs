% Read the color image (Input)
img = imread('RGBBar.bmp');

% Find the size of the original image
[rows, cols, channels] = size(img);
disp(['Original Size: ', num2str(rows), 'x', num2str(cols)]);

% Resize to 256x256 (Output)
resizedImg = imresize(img, [256, 256]);

% Create a new figure window
figure;

% Display the Input image on the left
subplot(1, 2, 1); 
imshow(img);
title(['Original Image: ', num2str(rows), 'x', num2str(cols)]);

% Display the Output image on the right
subplot(1, 2, 2); 
imshow(resizedImg);
title('Resized Image: 256x256');