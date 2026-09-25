% Read the color image (Input)
img = imread('RGBBar.bmp');

% Convert it to grayscale (Output)
grayImg = rgb2gray(img);

% Create a new figure window
figure;

% Display the Input image on the left
subplot(1, 2, 1); % 1 row, 2 columns, 1st position
imshow(img);
title('Original Image (Input)');

% Display the Output image on the right
subplot(1, 2, 2); % 1 row, 2 columns, 2nd position
imshow(grayImg);
title('Grayscale Image (Output)');