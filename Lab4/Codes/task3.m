n = -15:15;
shift_val = input('Enter the number of samples to shift: ');
shift_dir = input('Shift right (delay) or left (advance)? (Enter "r" or "l"): ', 's');

if strcmpi(shift_dir, 'r')
    step_shifted = (n - shift_val >= 0); % Delay
    action = 'Delayed';
elseif strcmpi(shift_dir, 'l')
    step_shifted = (n + shift_val >= 0); % Advance
    action = 'Advanced';
else
    error('Invalid input direction.');
end

figure;
stem(n, step_shifted, 'filled');
title(['Task 3: Unit Step ', action, ' by ', num2str(shift_val)]);
xlabel('n'); ylabel('Amplitude');