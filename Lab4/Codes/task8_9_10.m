% visual_proof_linearity.m
n = -10:20;

% Define Inputs and Constants
x1 = (n - 1 >= 0);           % Unit Step (Step time = 1)
x2 = 3 * (n - 5 >= 0);       % Unit Step (Step time = 5, Final value = 3)
a1 = 7; a2 = 19;             % Constants

% Define Systems
sys1 = @(x) [zeros(1,3), x(1:end-3)];       % Sys1: y(n) = x(n-3)
sys2 = @(x) 5 .* [zeros(1,7), x(1:end-7)];  % Sys2: y(n) = 5*x(n-7)
sys3 = @(x) ([zeros(1,1), x(1:end-1)]).^2;  % Sys3: y(n) = x^2(n-1)

% Combined Input Sequence
x_combined = a1*x1 + a2*x2;

figure('Name', 'Linearity Proof', 'Position', [100 100 900 700]);

%% System 1: y(n) = x(n-3)
LHS1 = sys1(x_combined);
RHS1 = a1*sys1(x1) + a2*sys1(x2);

subplot(3,2,1); stem(n, LHS1, 'b', 'filled'); title('Sys1 LHS: H(a1x1 + a2x2)'); grid on;
subplot(3,2,2); stem(n, RHS1, 'r', 'filled'); title('Sys1 RHS: a1H(x1) + a2H(x2)'); grid on;

%% System 2: y(n) = 5*x(n-7)
LHS2 = sys2(x_combined);
RHS2 = a1*sys2(x1) + a2*sys2(x2);

subplot(3,2,3); stem(n, LHS2, 'b', 'filled'); title('Sys2 LHS: H(a1x1 + a2x2)'); grid on;
subplot(3,2,4); stem(n, RHS2, 'r', 'filled'); title('Sys2 RHS: a1H(x1) + a2H(x2)'); grid on;

%% System 3: y(n) = x^2(n-1)
LHS3 = sys3(x_combined);
RHS3 = a1*sys3(x1) + a2*sys3(x2);

subplot(3,2,5); stem(n, LHS3, 'b', 'filled'); title('Sys3 LHS: H(a1x1 + a2x2)'); grid on;
subplot(3,2,6); stem(n, RHS3, 'r', 'filled'); title('Sys3 RHS: a1H(x1) + a2H(x2) [MISMATCH]'); grid on;

suptitle('Linearity Verification: LHS vs RHS');