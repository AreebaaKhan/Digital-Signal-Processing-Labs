% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 10: Investigate the difference between multiplication (*) and
% element-wise multiplication (.*) of vectors/matrices.

a = [1 2 3];
b = [4 5 6];

% Element-wise multiplication: multiplies corresponding elements
c = a .* b        % result: [4 10 18]

% Matrix multiplication: needs compatible dimensions (dot product here)
d = a * b'        % result: 32

A = [1 2; 3 4];
B = [5 6; 7 8];

A .* B            % element-by-element multiplication
A * B             % standard matrix multiplication
