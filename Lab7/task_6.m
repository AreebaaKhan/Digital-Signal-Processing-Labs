% Task 6 Solution
num = [1 -3 4 1];
den = [1 -4 1 -0.16];

[r, p, k] = residuez(num, den);

disp('Residues (r):'); disp(r);
disp('Poles (p):'); disp(p);
disp('Direct term (k):'); disp(k);