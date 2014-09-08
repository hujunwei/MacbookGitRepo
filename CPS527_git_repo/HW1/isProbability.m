%CPS527--HW1Q6_1
function [ ans_bool ] = isProbability( matrix )
%check sum of each elem == 1 && check each elem >= 0
ans_bool = sum(sum(matrix, 2), 1) == 1 && isempty(find(matrix < 0)) && isempty(find(matrix > 1));
end

