function [x] = advflip(u, s)
    % ADVFLIP Advances the sequence first by 's' samples, then flips it.
    % u: input sequence array
    % s: number of samples to advance
    
    % Advance first
    if s > 0 && s < length(u)
        u_advanced = [u(s+1:end), zeros(1, s)];
    elseif s >= length(u)
        u_advanced = zeros(1, length(u));
    else
        u_advanced = u;
    end
    
    % Then flip
    x = fliplr(u_advanced);
end