I = imread("resources/Noisy_Pic.png");

[~, ~, channels] = size(I); 
disp(['N_Channels:', num2str(channels)]);

imshow(I);



mask_sizes = [3, 5, 7, 9];

figure;
subplot(2,3,1);
imshow(I);
title('Original Noisy Image');

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

fig_output_path = "resources/MaskComparison.fig";  
savefig(fig_output_path);  

output_path = "resources/Filtered_Image.png";
imwrite(best_filtered_I, output_path);
