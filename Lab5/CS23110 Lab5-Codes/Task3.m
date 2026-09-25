clc;
clear;
close all;

%% TASK 3
% Record "today is my birthday"
% Then perform:
% a. Multiply by -1
% b. Reverse in time
% c. Multiply by 10
% d. Square root of each sample
% e. Square of each sample

%% Recording parameters

Fs = 44100;
nBits = 16;
nChannels = 1;
duration = 4;

%% ---------------------------------------------------------
% Record audio
% ----------------------------------------------------------

disp('--------------------------------------');
disp('TASK 3');
disp('Press any key to start recording...');
pause;

recObj = audiorecorder(Fs, nBits, nChannels);

disp('Say: TODAY IS MY BIRTHDAY');

recordblocking(recObj, duration);

disp('Recording completed.');

x = getaudiodata(recObj);

%% Save original audio

audiowrite('today_is_my_birthday.wav', x, Fs);

%% ---------------------------------------------------------
% Original signal
% ----------------------------------------------------------

disp('Playing ORIGINAL signal...');
sound(x, Fs);

pause(duration + 0.5);

%% ---------------------------------------------------------
% A. Multiply signal by -1
% ----------------------------------------------------------

x_neg = -x;

audiowrite('negative_signal.wav', x_neg, Fs);

disp('Playing signal multiplied by -1...');
sound(x_neg, Fs);

pause(duration + 0.5);

%% ---------------------------------------------------------
% B. Reverse signal in time
% ----------------------------------------------------------

x_reverse = flipud(x);

audiowrite('reversed_signal.wav', x_reverse, Fs);

disp('Playing REVERSED signal...');
sound(x_reverse, Fs);

pause(duration + 0.5);

%% ---------------------------------------------------------
% C. Multiply signal by 10
% ----------------------------------------------------------

x_times10 = 10 * x;

% Prevent clipping
x_times10 = max(min(x_times10, 1), -1);

audiowrite('amplified_signal.wav', x_times10, Fs);

disp('Playing signal multiplied by 10...');
sound(x_times10, Fs);

pause(duration + 0.5);

%% ---------------------------------------------------------
% D. Square root of each sample
% ----------------------------------------------------------

% sqrt() cannot directly be applied to negative
% audio samples, so preserve the sign.

x_sqrt = sign(x) .* sqrt(abs(x));

audiowrite('sqrt_signal.wav', x_sqrt, Fs);

disp('Playing square-root transformed signal...');
sound(x_sqrt, Fs);

pause(duration + 0.5);

%% ---------------------------------------------------------
% E. Square of each sample
% ----------------------------------------------------------

x_square = x.^2;

audiowrite('square_signal.wav', x_square, Fs);

disp('Playing squared signal...');
sound(x_square, Fs);

pause(duration + 0.5);

%% ---------------------------------------------------------
% Plot all signals
% ----------------------------------------------------------

t = (0:length(x)-1)/Fs;

figure;

subplot(3,2,1);
plot(t,x);
title('Original Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,2,2);
plot(t,x_neg);
title('Signal × (-1)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,2,3);
plot(t,x_reverse);
title('Time Reversed');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,2,4);
plot(t,x_times10);
title('Signal × 10');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,2,5);
plot(t,x_sqrt);
title('Square Root');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,2,6);
plot(t,x_square);
title('Square');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

sgtitle('Task 3 - Audio Signal Operations');

disp('Task 3 completed.');