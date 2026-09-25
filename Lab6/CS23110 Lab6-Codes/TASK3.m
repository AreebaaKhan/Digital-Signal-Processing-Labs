% Read a color image
img = imread('football2.jpg');

% Separate the RGB planes
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

% Display each plane individually
figure;
subplot(2,2,1); imshow(R); title('Red Plane');
subplot(2,2,2); imshow(G); title('Green Plane');
subplot(2,2,3); imshow(B); title('Blue Plane');

% Recombine the planes
reconstructedImg = cat(3, R, G, B);

% Display the reconstructed image
subplot(2,2,4); imshow(reconstructedImg); title('Reconstructed Image');