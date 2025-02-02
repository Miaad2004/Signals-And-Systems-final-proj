% الف
imagePath = 'Resources/Flower.png';

I = imread(imagePath);

if size(I, 3) == 3  
    I = rgb2gray(I);
end

fprintf('n_channels= %d\n', size(I, 3));

% ب
imshow(I);
title('Flower');

[rows, cols] = size(I);
fprintf('Image dims: %d x %d\n', rows, cols);

dataType = class(I);
fprintf('Image data type: %s\n', dataType);

bitsPerPixel = 8 * numel(I) / (rows * cols);
fprintf('Bits per pixel= %.2f\n', bitsPerPixel);

% ج
quantLevels = [64,32,16,8,4,2];
nBits = [6,5,4,3,2,1];

figure;
numQuant = numel(quantLevels);

for idx = 1:numQuant
    L = quantLevels(idx);  
    
    % normalize
    I_normalized = double(I) / 255;     

    % quantize
    I_quantized  = round(I_normalized * (L-1)); 
    
    % Rescale 
    Iq = uint8(round(I_quantized * (255/(L-1))));
    
    subplot(2, 3, idx);
    imshow(Iq);
    title(sprintf('%d Levels (%d-bit)', L, nBits(idx)));
end

