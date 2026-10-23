% Task 1 Solution
syms n z

% (a) x[n] = (5*2^n - 3n) u(n)
x_a = (5*2^n - 3*n);
X_a = ztrans(x_a, n, z);
disp('Task 1a Z-transform:'); disp(X_a);

% (b) x[n] = (7*3^n - 4*(-1)^n) u(n)
x_b = (7*3^n - 4*(-1)^n);
X_b = ztrans(x_b, n, z);
disp('Task 1b Z-transform:'); disp(X_b);

% (c) x[n] = (6n + 2*e^(-5n)) u(n)
x_c = (6*n + 2*exp(-5*n));
X_c = ztrans(x_c, n, z);
disp('Task 1c Z-transform:'); disp(X_c);

% (d) x[n] = cos(pi*n) u(n)
x_d = cos(pi*n);
X_d = ztrans(x_d, n, z);
disp('Task 1d Z-transform:'); disp(X_d);

% Symbolic Verification via iztrans
disp('Inverse of 1a:'); disp(iztrans(X_a, z, n));