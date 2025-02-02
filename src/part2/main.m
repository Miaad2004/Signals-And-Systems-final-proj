
% الف
I = imread("resources/Noisy_Pic.png");

[~, ~, channels] = size(I); 
disp(['N_Channels:', num2str(channels)]);

% ب
imshow(I);

% و
mask_sizes = [3, 5, 7, 9];

figure;
subplot(2,3,1);
imshow(I);
title('Noisy IMG');

best_filtered_I = I; 

for i = 1:length(mask_sizes)
    mask = mask_sizes(i);
    filtered_I = medfilt2(I, [mask mask]); 
    
    subplot(2,3,i+1);
    imshow(filtered_I);
    title(['Median Filter ', num2str(mask), 'x', num2str(mask)]);
    
    if mask == 5
        best_filtered_I = filtered_I;
    end
end

figure;
imshow(best_filtered_I);
title('Best Filtered (5x5)');
