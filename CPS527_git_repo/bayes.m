%CPS527--HW1Q6_7
function [ Pygx ] = bayes( Pxgy, Py )
if isProbability(Py) == 0
    error('invalid input: inputs are not valid probability distribution');
end

[m, n] = size(Pxgy);
Pxgy_Sum_i = 0;
for i = 1 : m
    for j = 1 : n
        Pygx(i, j) = Pxgy(i, j) * Py(j) / sum(Pxgy(i,:) .* Py, 2);
    end
end


end

