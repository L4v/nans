function s = sumGreater(A)

s = 0;
[rows, cols] = size(A);
sumels = sum(sum(A));
avgels = sumels / (rows * cols);

s = sum(A(A > avgels));

end