% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 2: Generate a script file which produces a sine wave by taking
% frequency as an input at run time.

f = input('Enter frequency (Hz): ');
t = 0:0.001:1;
y = sin(2*pi*f*t);

plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave');
