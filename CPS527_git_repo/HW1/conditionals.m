%CPS527--HW1Q6_5
function [ Pxgy, Pygx ] = conditionals( P )
if isProbability(P) == 0
    error('invalid input: P is not a valid probability distribution');
end
[m, n] = size(P);
[Px, Py] = marginals(P);
%find 0 elem in Py
[row_zero_py, col_zero_py] = find(Py == 0);
%compute condition probability
Pxgy = P./(ones(m,1) * Py);
Pxgy(:, col_zero_py) = 1 / m;
%find 0 elem in Px
[row_zero_px, col_zero_px] = find(Px == 0);
Pygx = P./(Px * ones(1,n));
%compute condition probability
Pygx(row_zero_px, :) = 1 / n;

end

