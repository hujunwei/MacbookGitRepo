function [ ans ] = isProbability( matrix )
[row, col] = size(matrix)
%check sum of each elem == 1
sum_all = sum(sum(matrix, 2), 1);
if sum_all == 1
    ans = true
else
    ans = false
end
%check each elem >= 0
dummy = find(matrix < 0)
if isempty(dummy)
    ans = ans & true
else
    ans = ans & false
end


end

