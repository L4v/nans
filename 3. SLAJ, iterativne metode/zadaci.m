% Zadaci
%% PRVI
A = [9 3 1; 7 8 9; 4 1 9];
b = [33; 54; 13];
x0 = zeros(3, 1);
[x1, it1] = gs(A, b, x0, 100, 10^-5);
x1
%% DRUGI
A = sin([1.960 0.3424 0.1747; 0.2449 1.0565 0.0751; 0.1980 0.2631 0.9159]);
b = [-2.6827; -3.7424; 0.9456];
x0 = zeros(3, 1);
[x2, it2] = gs(A, b, x0, 100, 10^-5);
x2
%% TRECI
% Zbog deljenja sa 0, elementi na glavnoj dijagonali treba da budu razl. od
% 0
A = [1 1 2; 1 2 0; -1 -1 1]; % Umesto 0 stavio sam 1
b = [1; 2; 3];
x0 = zeros(3, 1);
[x3, it3] = gs(A, b, x0, 100, 10^-5);
x3
%% CETVRTI
% 2x + 1/y = 1 -> 2x + w = 1
% x + 2/y = -2 -> x + 2w = -2, w = 1/y
% -> b = [1; -2], A = [2 1; 1 2]
A = [2 1; 1 2];
b = [1; -2];
x0 = zeros(2, 1);
[x4, it4] = gs(A, b, x0, 100, 10^-5);
x4(2) = 1/x4(2); % Isto kao i metod smene sa w
x4
%% PETI
% 4x + 2y = 1 -> 4x + 2y + 0z = 1
% x = -2y -1  -> x + 2y + 0z = -1
% z(2x + y) = -4 -> 2x + y = -4/z -> 2x + y - 4/z = 0
A = [4 2 0; 1 2 0; 2 1 -4];
b = [1; -1; 0];
x0 = zeros(3,1);
[x5, it5] = gs(A, b, x0, 100, 10^-5);
x5(3) = 1/x5(3);
x5