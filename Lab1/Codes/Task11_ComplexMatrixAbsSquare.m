% CS-419 Digital Signal Processing - Lab Session 01
% Omar Rashid | CS-23136
% Task # 11: Generate a complex-valued matrix
% a = ones(1,10) + i*(1:10)
% and calculate the absolute square of all elements of this matrix.

a = ones(1,10) + 1i*(1:10);   % complex-valued matrix
abs_sq = abs(a).^2;            % absolute square of every element
disp(abs_sq);
