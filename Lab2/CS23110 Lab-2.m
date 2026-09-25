% Lab Session 02
% Effects of Sampling and Aliasing

clc;
clear;
close all;

%% Task 1: Continuous Time Sinusoid

A = 2;
F = input('Enter the frequency of sinusoid in Hz: ');

t = 0:0.001:1;
xa = A*cos(2*pi*F*t);

figure;
plot(t,xa,'b');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Continuous Time Sinusoid');
grid on;


%% Task 2: Sampling Frequency 
%% Less Than Twice Signal Frequency

Fs1 = input('Enter sampling frequency less than 2F: ');

n1 = 0:1/Fs1:1;
x1 = A*cos(2*pi*F*n1);

figure;
stem(n1,x1,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sampling Frequency < 2F');
grid on;


%% Task 3: Sampling Frequency 
%% Equal To Twice Signal Frequency

Fs2 = 2*F;

n2 = 0:1/Fs2:1;
x2 = A*cos(2*pi*F*n2);

figure;
stem(n2,x2,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sampling Frequency = 2F');
grid on;


%% Task 4: Sampling Frequency Greater Than Twice Signal Frequency

Fs3 = input('Enter sampling frequency greater than 2F: ');

n3 = 0:1/Fs3:1;
x3 = A*cos(2*pi*F*n3);

figure;
stem(n3,x3,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Sampling Frequency > 2F');
grid on;


%% Task 5: Comparison of All Four Signals

figure;

subplot(4,1,1);
plot(t,xa,'b');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Continuous Time Signal');
grid on;

subplot(4,1,2);
stem(n1,x1,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Fs < 2F');
grid on;

subplot(4,1,3);
stem(n2,x2,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Fs = 2F');
grid on;

subplot(4,1,4);
stem(n3,x3,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Fs > 2F');
grid on;


%% Task 6

% xa(t) = 3cos(100*pi*t)
% 2*pi*F = 100*pi
% F = 50 Hz

A = 3;
F = 50;

% Minimum sampling frequency
Fs_min = 2*F;

fprintf('Minimum sampling rate required = %d Hz\n',Fs_min);


% Sampling at Fs = 200 Hz
Fs4 = 200;

n4 = 0:1/Fs4:0.2;
x4 = A*cos(2*pi*F*n4);

fprintf('\nFor Fs = 200 Hz:\n');
fprintf('x[n] = 3cos(pi*n/2)\n');

figure;
stem(n4,x4,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Discrete-Time Signal for Fs = 200 Hz');
grid on;


% Sampling at Fs = 75 Hz
Fs5 = 75;

n5 = 0:1/Fs5:0.2;
x5 = A*cos(2*pi*F*n5);

fprintf('\nFor Fs = 75 Hz:\n');
fprintf('x[n] = 3cos(4*pi*n/3)\n');

figure;
stem(n5,x5,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Discrete-Time Signal for Fs = 75 Hz (Aliasing)');
grid on;


% Combined plot for Task 6

figure;

subplot(2,1,1);
stem(n4,x4,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Fs = 200 Hz');
grid on;

subplot(2,1,2);
stem(n5,x5,'filled');
xlabel('Time (sec)');
ylabel('Amplitude');
title('Fs = 75 Hz - Aliasing');
grid on;
