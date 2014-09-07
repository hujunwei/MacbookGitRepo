%CPS527--HW1Q6_7
function [ Pygx ] = bayes( Pxgy, Py )
if isProbability(Py) == 0 || ~isempty(find(Pxgy < 0))
    error('invalid input: inputs are not valid probability distribution');
end

[m, n] = size(Pxgy);
%compute joint probability
P = Pxgy .* (ones(m,1) * Py);
Px = sum(P,2);
%find 0 elem in Px
[row_zero_px, col_zero_px] = find(Px == 0);
%compute condition probability
Pygx = P./(Px * ones(1,n));
Pygx(row_zero_px, :) = 1 / n;


end

