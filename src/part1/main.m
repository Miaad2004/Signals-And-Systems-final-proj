% الف
soundData = load('Resources/Sound.mat'); 
y = soundData.Noisy_Sound; 
Fs = soundData.Fs;          
disp(['Fs: ', num2str(Fs), ' Hz']);
N = length(y);
disp(['N_samples: ', num2str(N)]);

%sound(y, Fs);
%pause(length(y)/Fs);

% ب
Y = fft(y); 
Y_shifted = fftshift(Y); 
magnetude_spec = abs(Y_shifted); 

f_sig = linspace(-Fs/2, Fs/2, N);

figure;
plot(f_sig, magnetude_spec, 'b'); 
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum');
grid on;


%د
% completed in fdatool panel
% Fpass = 6050, Fstop = 6150, Fs=44100

%ه
figure;
stem(Num, 'filled', 'MarkerFaceColor', 'b');
xlabel('Sample Index');
ylabel('Amplitude');
title('Impulse Response');
grid on;

% و
N_filter = 1024; 
H = fft(Num, N_filter);  
H_shifted = fftshift(H); 
H_magnitude = abs(H_shifted);

f_filter = linspace(-Fs/2, Fs/2, N_filter); 

figure;
plot(f_filter, H_magnitude, 'b');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Response');
grid on;

% To Dos: Find Cutoff Freq in digital (big OMEGA in oppenhime book)
% To Dos: Find Cutoff Freq in analog (f in oppenhime book)
% To DO: omapre the result with design specifications above


% ز
Filtered_Sound = conv(y, Num, 'same');
sound(Filtered_Sound, Fs);

% ح
audiowrite("Resources\Filtered_Sound.wav", Filtered_Sound, Fs);

% ط



