n = -15:15;
% User inputs
shift_val = input('Enter the number of samples to shift: ');
shift_dir = input('Shift right (delay) or left (advance)? (Enter "r" or "l"): ', 's');

% Determine shift logic
if strcmpi(shift_dir, 'r')
    impulse_shifted = (n - shift_val == 0); % Delay
    action = 'Delayed';
elseif strcmpi(shift_dir, 'l')
    impulse_shifted = (n + shift_val == 0); % Advance
    action = 'Advanced';
else
    error('Invalid input direction. Please use "r" or "l".');
end

figure;
stem(n, impulse_shifted, 'filled');
title(['Task 2: Unit Impulse ', action, ' by ', num2str(shift_val)]);
xlabel('n'); ylabel('Amplitude');