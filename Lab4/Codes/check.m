% test_flip_functions.m
% Script to check the functionality of flipadv and advflip

% 1. Define an asymmetric test sequence
% We use [1 2 3 4 5 0 0] so it's easy to see when it flips and shifts.
u = [1, 2, 3, 4, 5, 0, 0];
s = 2; % Number of samples to advance (shift left)

% 2. Call the custom functions
x_flipadv = flipadv(u, s);
x_advflip = advflip(u, s);

% Define an arbitrary n-axis starting from 0 for plotting
n_u = 0 : length(u)-1;
n_fa = 0 : length(x_flipadv)-1;
n_af = 0 : length(x_advflip)-1;

% 3. Plot the results
figure('Name', 'Testing flipadv and advflip', 'Position', [100, 100, 700, 800]);

%% Subplot 1: Original Sequence
subplot(3, 1, 1);
stem(n_u, u, 'k', 'filled', 'LineWidth', 1.5);
title('Original Sequence: u[n] = [1 2 3 4 5 0 0]');
xlabel('n'); ylabel('Amplitude');
grid on;
ylim([0 6]); xlim([-1 8]);

%% Subplot 2: Result of flipadv
% Expected: First flip -> [0 0 5 4 3 2 1], then advance by 2 -> [5 4 3 2 1 0 0]
subplot(3, 1, 2);
stem(n_fa, x_flipadv, 'b', 'filled', 'LineWidth', 1.5);
title(['flipadv(u, ', num2str(s), ') -> Flipped FIRST, then Advanced by ', num2str(s)]);
xlabel('n'); ylabel('Amplitude');
grid on;
ylim([0 6]); xlim([-1 8]);

%% Subplot 3: Result of advflip
% Expected: First advance by 2 -> [3 4 5 0 0 0 0], then flip -> [0 0 0 0 5 4 3]
subplot(3, 1, 3);
stem(n_af, x_advflip, 'r', 'filled', 'LineWidth', 1.5);
title(['advflip(u, ', num2str(s), ') -> Advanced FIRST by ', num2str(s), ', then Flipped']);
xlabel('n'); ylabel('Amplitude');
grid on;
ylim([0 6]); xlim([-1 8]);