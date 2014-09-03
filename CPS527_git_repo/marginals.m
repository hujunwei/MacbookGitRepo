%CPS527--HW1Q6_3
function [ Px, Py ] = marginals( P )
if isProbability(P) == 0
    error('invalid input: P is not a valid probability distribution');
end
Py = sum(P, 1);
Px = sum(P, 2);

end

