clc;
clear;
close all;

% ------------------------------------------------
% TASK 5 - RECORD AUDIO
% ------------------------------------------------

% Recording parameters
Fs_original = 44100;
nBits = 16;
nChannels = 1;
duration = 5;

% Create recorder
recObj = audiorecorder(Fs_original, nBits, nChannels);

disp('Start speaking...');
disp('Say: Sunday is a beautiful day');

recordblocking(recObj, duration);

disp('Recording finished.');

% Get recorded audio
x = getaudiodata(recObj);

% Make sure signal is a column vector
x = x(:);

% Save original recording
audiowrite('sunday.wav', x, Fs_original);

disp('Saved as sunday.wav');


% ------------------------------------------------
% PLAY ORIGINAL
% ------------------------------------------------

disp('Playing original recording...');

sound(x, Fs_original);

pause(duration + 1);


% ------------------------------------------------
% RESAMPLE TO 11025 Hz
% ------------------------------------------------

Fs_new = 11025;

y = resample(x, Fs_new, Fs_original);

% Make sure resampled signal is a column
y = y(:);

% Save resampled audio
audiowrite('sunday_11025Hz.wav', y, Fs_new);

disp('Resampling completed.');
disp('Saved as sunday_11025Hz.wav');


% ------------------------------------------------
% TIME VECTORS
% ------------------------------------------------

t_original = (0:length(x)-1)' / Fs_original;

t_new = (0:length(y)-1)' / Fs_new;


% ------------------------------------------------
% CALCULATE DIFFERENCE
% ------------------------------------------------

% Instead of interp1(), use resample() to bring
% the resampled signal back to the original
% sampling rate.

y_back = resample(y, Fs_original, Fs_new);

% Make both signals the same length
N = min(length(x), length(y_back));

x_compare = x(1:N);
y_compare = y_back(1:N);

% Calculate absolute difference
difference = abs(x_compare - y_compare);

% Time vector for difference
t_difference = (0:N-1)' / Fs_original;


% ------------------------------------------------
% PLOT RESULTS
% ------------------------------------------------

figure;

% Original waveform
subplot(3,1,1);

plot(t_original, x);

title('Original Signal - 44100 Hz');

xlabel('Time (seconds)');
ylabel('Amplitude');

grid on;


% Resampled waveform
subplot(3,1,2);

plot(t_new, y);

title('Resampled Signal - 11025 Hz');

xlabel('Time (seconds)');
ylabel('Amplitude');

grid on;


% Absolute difference
subplot(3,1,3);

plot(t_difference, difference);

title('Absolute Difference');

xlabel('Time (seconds)');
ylabel('Difference');

grid on;


disp(' ');
disp('Task 5 completed successfully.');