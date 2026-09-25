% Define discrete time vector
n = -10:10; 

% Unit impulse is 1 at n = 0. To delay by 5, it is 1 at n = 5
impulse_delayed = (n == 5); 

figure;
stem(n, impulse_delayed, 'filled', 'LineWidth', 1.5);
title('Task 1: Unit Impulse Delayed by 5 Samples');
xlabel('n'); ylabel('Amplitude');
grid on;