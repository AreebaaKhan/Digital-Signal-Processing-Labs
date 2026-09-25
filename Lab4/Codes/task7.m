t = -2:0.01:2;
% Generate square wave. square(2*pi*t) oscillates between -1 and 1. 
y_square = 5 * square(2*pi*t); 
y_flipped = fliplr(y_square); % Flip the sequence

figure;
plot(t, y_square, 'b', 'LineWidth', 2); hold on;
plot(t, y_flipped, 'r--', 'LineWidth', 2);
title('Task 7: Original vs Flipped Square Wave');
legend('Original', 'Flipped');
axis([-2 2 -6 6]); grid on; hold off;