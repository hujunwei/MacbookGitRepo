%CPS527--HW1Q6_3
function [ Px, Py ] = CPS527HW6_3( P )
if isProbability(P) == false
    disp('invalid input: P is not a valid probability distribution');
    return;
end
Px = sum(P, 1);
Py = sum(P, 2);

end

