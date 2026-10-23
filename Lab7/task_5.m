% Task 5 Solution
b = [1 2];    % Numerator coefficients
a = [1 0.9];  % Denominator coefficients

z_pts = roots(b);
p_pts = roots(a);

disp('Zeros:'); disp(z_pts);
disp('Poles:'); disp(p_pts);

% Plot on Z-plane
figure;
zplane(b, a);
title('Task 5: Pole-Zero Plot');