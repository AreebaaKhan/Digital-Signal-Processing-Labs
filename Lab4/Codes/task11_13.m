% Tasks 11 and 13: Command Window Verification of TI and LTI
% No plots - Outputs results directly to the Command Window

n = -10:20;
x = (n >= 0); % Standard unit step as test signal
delay_k = 4;  % Delay factor

% Define the Systems from the previous tasks
sys1 = @(x_seq) [zeros(1,3), x_seq(1:end-3)];       % System 1: y(n) = x(n-3)
sys2 = @(x_seq) 5 .* [zeros(1,7), x_seq(1:end-7)];  % System 2: y(n) = 5*x(n-7)
sys3 = @(x_seq) ([zeros(1,1), x_seq(1:end-1)]).^2;  % System 3: y(n) = x^2(n-1)

%% Verify Time Invariance (TI)
% Shift the input signal by delay_k
x_delayed = [zeros(1, delay_k), x(1:end-delay_k)];

% System 1
Y_of_delayed_input1 = sys1(x_delayed);
Y_original1 = sys1(x);
Delayed_Y_output1 = [zeros(1, delay_k), Y_original1(1:end-delay_k)];
is_TI_1 = isequal(Y_of_delayed_input1, Delayed_Y_output1);

% System 2
Y_of_delayed_input2 = sys2(x_delayed);
Y_original2 = sys2(x);
Delayed_Y_output2 = [zeros(1, delay_k), Y_original2(1:end-delay_k)];
is_TI_2 = isequal(Y_of_delayed_input2, Delayed_Y_output2);

% System 3
Y_of_delayed_input3 = sys3(x_delayed);
Y_original3 = sys3(x);
Delayed_Y_output3 = [zeros(1, delay_k), Y_original3(1:end-delay_k)];
is_TI_3 = isequal(Y_of_delayed_input3, Delayed_Y_output3);

%% Print Results to Command Window
fprintf('\n==================================================\n');
fprintf('TASKS 11 & 13: TIME INVARIANCE AND LTI VERIFICATION\n');
fprintf('==================================================\n\n');

fprintf('System 1: y(n) = x(n-3)\n');
fprintf('  - Time Invariant Check: %d (1=True, 0=False)\n', is_TI_1);
fprintf('  - Linearity Check (Task 8): 1\n');
fprintf('  - LTI Status: YES (System is Linear and Time-Invariant)\n\n');

fprintf('System 2: y(n) = 5 * x(n-7)\n');
fprintf('  - Time Invariant Check: %d (1=True, 0=False)\n', is_TI_2);
fprintf('  - Linearity Check (Task 9): 1\n');
fprintf('  - LTI Status: YES (System is Linear and Time-Invariant)\n\n');

fprintf('System 3: y(n) = x^2(n-1)\n');
fprintf('  - Time Invariant Check: %d (1=True, 0=False)\n', is_TI_3);
fprintf('  - Linearity Check (Task 10): 0\n');
fprintf('  - LTI Status: NO (System is Time-Invariant, but Non-Linear)\n');
fprintf('==================================================\n\n');