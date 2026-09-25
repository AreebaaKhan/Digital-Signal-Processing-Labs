% 1. Read the original color images
origA = imread('image1.jpg');
origB = imread('image2.jpg');

% Resize Original B to exactly match Original A
[rows, cols, channels] = size(origA);
origB = imresize(origB, [rows, cols]);

% 2. Convert to grayscale, then to Black & White (binary)
bwA = im2bw(rgb2gray(origA));
bwB = im2bw(rgb2gray(origB));

% 3. Perform logical NOR and NAND on the B/W images
norImg = ~(bwA | bwB);
nandImg = ~(bwA & bwB);

% 4. Display all 6 images in a 3x2 grid
figure;

% Top row: True Originals
subplot(3,2,1); imshow(origA); title('Image 1 (Original color)');
subplot(3,2,2); imshow(origB); title('Image 2 (Original color)');

% Middle row: Black and White inputs
subplot(3,2,3); imshow(bwA); title('Image 1 (B/W)');
subplot(3,2,4); imshow(bwB); title('Image 2 (B/W)');

% Bottom row: Logical Outputs
subplot(3,2,5); imshow(norImg); title('NOR Operation');
subplot(3,2,6); imshow(nandImg); title('NAND Operation');