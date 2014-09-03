%CPS527--HW1Q6_8
P = [0 1 2 1; 0 9 0 3] / 16;
[row, col] = size(P);
[Pxgy, Pygx] = conditionals(P);
[Px, Py] = marginals(P);
[Pygx_bayes] = bayes(Pxgy, Py);
disp('Pygx is :');
disp(Pygx);
disp('Pygx_bayes is :');
disp(Pygx_bayes);


%CPS527--HW1Q6_9
