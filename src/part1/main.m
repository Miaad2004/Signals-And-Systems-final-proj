%a
soundData = load('Resources/Sound.mat'); 
y = soundData.Noisy_Sound; 
Fs = soundData.Fs;          
disp(['Sampling rate: ', num2str(Fs), ' Hz']);
N = length(y);
disp(['Number of samples: ', num2str(N)]);

%sound(y, Fs);

%b
Y = fft(y); 
Y_shifted = fftshift(Y); 
magnitude_spectrum = abs(Y_shifted); 

figure;
plot(f, magnitude_spectrum, 'b'); 
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;


%d_e

y_filtered = filter(Num, 1, y);

figure;
subplot(2,1,1);
plot(y);
title('Original Noisy Signal');
xlabel('Samples');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
plot(y_filtered);
title('Filtered Signal');
xlabel('Samples');
ylabel('Amplitude');
grid on;

sound(y_filtered, Fs);
figure;
stem(Num, 'filled', 'MarkerFaceColor', 'b');
xlabel('Sample Index');
ylabel('Amplitude');
title('Impulse Response of the Filter');
grid on;
