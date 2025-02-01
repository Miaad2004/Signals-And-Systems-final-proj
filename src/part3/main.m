%a
imagePath = 'Resources/Flower.png';

I = imread(imagePath);

if size(I, 3) == 3  
    I = rgb2gray(I);
end

%b
imshow(I);
title('Grayscale Image of Flower');

[rows, cols] = size(I);
fprintf('Image dimensions: %d x %d\n', rows, cols);

dataType = class(I);
fprintf('Data type of the image: %s\n', dataType);

bitsPerPixel = 8 * whos('I').bytes / (rows * cols);
fprintf('Each pixel contains %.0f bits.\n', bitsPerPixel);
