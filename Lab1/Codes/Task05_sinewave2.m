% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 5: Generate a function which produces a sine wave by accepting
% frequency and amplitude as input arguments and returns a plot.
%
% NOTE: Save this file as "sinewave2.m" (filename must match function name)
% before running it in MATLAB.

function y = sinewave2(f, A)
    t = 0:0.001:1;
    y = A*sin(2*pi*f*t);
    plot(t, y);
    xlabel('Time (s)');
    ylabel('Amplitude');
    title(['f = ', num2str(f), ' Hz, A = ', num2str(A)]);
end
