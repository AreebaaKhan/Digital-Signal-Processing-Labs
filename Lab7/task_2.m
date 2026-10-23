% Task 2 MATLAB Code
b1 = [1 1]; a1 = [1 -0.9 0.81];
b2 = [2 5 12]; a2 = [1 2 10];

z1 = roots(b1); p1 = roots(a1);
z2 = roots(b2); p2 = roots(a2);

figure;
subplot(1,2,1); pzmap(tf(b1, a1, 1, 'Variable', 'z^-1')); title('System 1 Pole-Zero Map');
subplot(1,2,2); pzmap(tf(b2, a2, 1, 'Variable', 'z^-1')); title('System 2 Pole-Zero Map');