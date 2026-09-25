% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 6: Repeat all above tasks (1-5) using the stem command
% instead of plot.

%% Task 1 repeated with stem (2 Hz)
figure;
t = 0:0.05:1;
f = 2;
y = sin(2*pi*f*t);
stem(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave (stem) - 2 Hz');

%% Task 2 repeated with stem (frequency as input)
figure;
f = input('Enter frequency (Hz): ');
t = 0:0.02:1;
y = sin(2*pi*f*t);
stem(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave (stem)');

%% Task 3 repeated with stem (subplot for 2,5,10,20 Hz)
figure;
t = 0:0.02:1;
freqs = [2 5 10 20];
for i = 1:4
    y = sin(2*pi*freqs(i)*t);
    subplot(2,2,i);
    stem(t, y);
    title([num2str(freqs(i)), ' Hz']);
    xlabel('Time (s)');
    ylabel('Amplitude');
end

%% Task 4 repeated with stem (1001-sample sine wave)
figure;
t = 0:0.02:1;
x = sin(2*pi*t);
stem(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave (stem)');

%% Task 5 repeated with stem (frequency and amplitude)
figure;
f = 5; A = 3;
t = 0:0.02:1;
y = A*sin(2*pi*f*t);
stem(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title(['f = ', num2str(f), ' Hz, A = ', num2str(A)]);
