I = imread("resources/Noisy_Pic.png");

[~, ~, channels] = size(I); 
disp(['N_Channels:', num2str(channels)]);

imshow(I);



