%CPS527--HW1Q7_2
clc;
clear all;
S = load ('hw1.mat');
Pxgc = S.pxgc;
Pxgb = S.pxgb;
stairs(Pxgc);
hold on
stairs(Pxgb, 'color', 'red');
title('Conditional probabilities p(x|c) & p(x|b)','fontsize',18);
xlabel('Pixel values','fontsize',18);
ylabel('Probability','fontsize',18);
legend('Pxgc','Pxgb');