%CPS527--HW1Q7_3
clc;
clear all;
S = load ('hw1.mat');
Pxgc = S.pxgc;
Pxgb = S.pxgb;
Pc = 58299 / (1024 * 1024);
Pb = 1 - Pc;
%calculate pcgx
Pxc = Pxgc .* Pc;
Px = Pxgc .* Pc + Pxgb .* Pb;
[row_zero_idx, col_zero_idx] = find(Px == 0);
Pcgx = Pxc ./ Px;
%for the ?NaN? in Pcgx and Pbgx, we assigned them as 1/2
Pcgx(row_zero_idx, :) = 1 / 2;
%calculate pbgx
Pxb = Pxgb .* Pb;
Pbgx = Pxb ./ Px;
%for the ?NaN? in Pcgx and Pbgx, we assigned them as 1/2
Pbgx(row_zero_idx, :) = 1 / 2;
stairs(Pcgx);
hold on
stairs(Pbgx, 'color', 'red');
title('Conditional probabilities p(c|x) & p(b|x)','fontsize',18);
xlabel('Pixel values','fontsize',18);
ylabel('Probability','fontsize',18);
legend('Pcgx','Pbgx');




%calculate tau
Epc = sum(Pcgx .* Px, 1);


% Pcgx = bayes(Pxgc, Pc);
% Pbgx = bayes(Pxgb, Pb);
