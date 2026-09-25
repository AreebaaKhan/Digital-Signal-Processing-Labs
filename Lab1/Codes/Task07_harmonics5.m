% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 7: Write a MATLAB function for plotting the 5 harmonics of a
% signal x(t) = cos(wt) with a fundamental frequency f = 0.5 Hz.
%
% NOTE: Save this file as "harmonics5.m" (filename must match function
% name) before running it in MATLAB.

function harmonics5(f0, t)
    for n = 1:5
        fn = n*f0;          % harmonic frequency
        Tn = 1/fn;           % harmonic time period
        y = cos(2*pi*fn*t);
        subplot(5,1,n);
        plot(t, y);
        title(['Harmonic ', num2str(n), ': f = ', num2str(fn), ' Hz, T = ', num2str(Tn), ' s']);
        xlabel('Time (s)');
        ylabel('Amplitude');
    end
end

% Frequencies and Time periods of the 5 harmonics (f0 = 0.5 Hz):
% Harmonic 1: f = 0.5 Hz,  T = 2.000 s
% Harmonic 2: f = 1.0 Hz,  T = 1.000 s
% Harmonic 3: f = 1.5 Hz,  T = 0.667 s
% Harmonic 4: f = 2.0 Hz,  T = 0.500 s
% Harmonic 5: f = 2.5 Hz,  T = 0.400 s
