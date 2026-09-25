% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 4: Implement a function [x] = sinewave(t) which produces a sine
% wave of 1001 samples with spacing of 1 ms.
%
% NOTE: Save this file as "sinewave.m" (filename must match function name)
% before running it in MATLAB.

function x = sinewave(t)
    x = sin(2*pi*t);
    plot(t, x);
    xlabel('Time (s)');
    ylabel('Amplitude');
    title('Sine Wave - 1001 samples, dt = 1ms');
end
