clear
close
%%
% 1.)
clear
A = [5 8 5; 4 2 7; 8 5 8];
b = [48; 43; 69];
[A, b] = upperTriangular(A, b);
x = solveUpperTriangular(A, b)

%%
% 2.)
clear
A = [3 4 1; 1 0 1; 2 3 2];
b = [3; 3; 1.5];
[A, b] = upperTriangular(A, b);
x = solveUpperTriangular(A, b)

%%
% 3.)
clear
A = [1 0.1 0.01 0.001; 1 0.3 0.3^2 0.3^3; 1 0.6 0.6^2 0.6^3; 1 1.2 1.2^2 1.2^3];
b = [1.023; 1.261; 2.368; 9.064];
[A, b] = upperTriangular(A, b);
x = solveUpperTriangular(A, b)

%%
% 4.)
clear
A = [-1 2 -3; 3 -4 -2; -4 -4 4]';
B = [10; 14; -15]; C = [3; 3; -3]; D = [-4; 0; -1];
b = D - B + 2*C;
[A, b] = upperTriangular(A, b);
x = solveUpperTriangular(A, b)

%%
% 5.)
clear
A = [-3 -2 -3; -3 0 -5; -1 -4 5];
b = [11; 7; 5];
[A, b] = upperTriangular(A, b);
x = solveUpperTriangular(A, b)