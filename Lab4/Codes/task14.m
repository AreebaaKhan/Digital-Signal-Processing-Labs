% random_signal_lti_proof.m
rng(42); % Fixed seed for consistent visualization
N_samples = 40;
n = 1:N_samples;

% Random Inputs
x1 = randn(1, N_samples);
x2 = randn(1, N_samples);
c1 = 1.5; c2 = -0.8;
delay_k = 5;

% Custom LTI System: Moving Average Filter y(n) = 0.5x(n) + 0.5x(n-1)
system_func = @(x) filter([0.5 0.5], 1, x);

figure('Name', 'Random Signal LTI Verification', 'Position', [100 100 800 600]);

%% Linearity Verification
LHS_Lin = system_func(c1*x1 + c2*x2);
RHS_Lin = c1*system_func(x1) + c2*system_func(x2);
error_Lin = abs(LHS_Lin - RHS_Lin);

subplot(2,1,1);
plot(n, LHS_Lin, 'b-o', 'LineWidth', 1.5); hold on;
plot(n, RHS_Lin, 'r--x', 'LineWidth', 1.5);
stem(n, error_Lin, 'k', 'filled'); % Plots the error (should remain at 0)
title('Linearity Verification with Random Signal');
legend('LHS (Combined Input)', 'RHS (Sum of Outputs)', 'Absolute Error');
grid on; hold off;

%% Time Invariance Verification
x1_delayed = [zeros(1, delay_k), x1(1:end-delay_k)];
Y_of_delayed = system_func(x1_delayed);

Y_original = system_func(x1);
Delayed_Y = [zeros(1, delay_k), Y_original(1:end-delay_k)];
error_TI = abs(Y_of_delayed - Delayed_Y);

subplot(2,1,2);
plot(n, Y_of_delayed, 'b-o', 'LineWidth', 1.5); hold on;
plot(n, Delayed_Y, 'r--x', 'LineWidth', 1.5);
stem(n, error_TI, 'k', 'filled'); % Plots the error (should remain at 0)
title(['Time Invariance Verification (Delay = ', num2str(delay_k), ' samples)']);
legend('Output of Delayed Input', 'Delayed Output', 'Absolute Error');
grid on; hold off;