% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 1: Generate a script file which produces a sine wave with 2 Hz frequency.

t = 0:0.001:1;
f = 2;
y = sin(2*pi*f*t);

plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave - 2 Hz');
