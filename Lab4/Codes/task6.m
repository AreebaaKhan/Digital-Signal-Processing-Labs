t = -5:0.01:5;
y_orig = tripuls(t, 2);     % Original (width 2)
y_comp = tripuls(2*t, 2);   % Compressed by factor of 2
y_dil  = tripuls(t/2, 2);   % Dilated by factor of 2

figure;
subplot(3,1,1); plot(t, y_orig, 'b', 'LineWidth', 1.5); title('Original Triangular Wave'); grid on;
subplot(3,1,2); plot(t, y_comp, 'r', 'LineWidth', 1.5); title('Compressed (y(2t))'); grid on;
subplot(3,1,3); plot(t, y_dil, 'g', 'LineWidth', 1.5); title('Dilated (y(t/2))'); grid on;