%CPS527--HW1Q7_6
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
Pcgx(row_zero_idx, :) = 1 / 2;

%apply threshold and generate classfication result
img = imread('yeast.png');
%Pcgx = Pcgx';
tau = 0.5;
bayesCell = Pcgx(img) > tau;
imagesc(bayesCell);
colormap gray;
axis image;
axis off;