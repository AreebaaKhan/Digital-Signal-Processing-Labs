% Task 3 & 4 Solution
w = linspace(-20, 20, 200); % 200 frequency points from -20 to 20 rad/s

% Frequency response computation
H1 = freqz(b1, a1, w);
H2 = freqz(b2, a2, w);

% Plotting System 1
figure;
subplot(2,1,1);
plot(w, 20*log10(abs(H1)));
title('System 1 Magnitude Response (dB)'); xlabel('\omega (rad/s)'); ylabel('Magnitude (dB)');
grid on;

subplot(2,1,2);
plot(w, angle(H1) * (180/pi));
title('System 1 Phase Response (degrees)'); xlabel('\omega (rad/s)'); ylabel('Phase (degrees)');
grid on;

% Plotting System 2
figure;
subplot(2,1,1);
plot(w, 20*log10(abs(H2)));
title('System 2 Magnitude Response (dB)'); xlabel('\omega (rad/s)'); ylabel('Magnitude (dB)');
grid on;

subplot(2,1,2);
plot(w, angle(H2) * (180/pi));
title('System 2 Phase Response (degrees)'); xlabel('\omega (rad/s)'); ylabel('Phase (degrees)');
grid on;