function [x] = flipadv(u, s)
    % FLIPADV Flips the sequence first, then advances it by 's' samples.
    % u: input sequence array
    % s: number of samples to advance (shift left)
    
    u_flipped = fliplr(u); % Flip horizontally
    
    % Advancing a finite array means shifting left and padding zeros at the end
    if s > 0 && s < length(u)
        x = [u_flipped(s+1:end), zeros(1, s)];
    elseif s >= length(u)
        x = zeros(1, length(u)); % Fully shifted out
    else
        x = u_flipped;
    end
end