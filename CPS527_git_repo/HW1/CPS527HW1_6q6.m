%CPS527--HW1Q6_6
clc;
clear all;
P = [0 1 2 1; 0 9 0 3] / 16;
[Pxgy, Pygx] = conditionals(P);
disp('Pxgy is');
disp(Pxgy);
disp('Pygx is');
disp(Pygx);