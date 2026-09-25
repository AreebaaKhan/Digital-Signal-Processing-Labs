% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 14: Use a FOR loop to generate a single vector y, which is a
% digitized unit sine wave with ten samples per cycle, with 100 elements.

N = 100;                  % total number of elements
y = zeros(1, N);          % preallocate vector

for n = 1:N
    y(n) = sin(2*pi*n/10);   % 10 samples per cycle
end

plot(y);
title('Unit Sine Wave using FOR loop');
xlabel('Sample Number');
ylabel('Amplitude');
