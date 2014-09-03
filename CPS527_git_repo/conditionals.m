%CPS527--HW1Q6_5
function [ Pxgy, Pygx ] = conditionals( P )
[m, n] = size(P);
if isProbability(P) == 0
    error('invalid input: P is not a valid probability distribution');
end
[Px, Py] = marginals(P);

%find col indices that are 0
col_IX_zero = find(Py == 0);
%find row indices that are 0
row_IX_zero = find(Px == 0);

for i = 1 : m
    Pxgy(i, :) = P(i, :) ./ Py;
end

for i = 1 : n
    Pygx(:, i) = P(:, i) ./ Px;
end

for i = 1 : length(col_IX_zero)
    Pxgy(:, i) = 1 / m;
end

for i = 1 : length(row_IX_zero)
    Pygx(i, :) = 1 / n;
end

end

