function B = zadatak9(A)

[rows, cols] = size(A);
B = zeros(rows, cols);

for col = 1:cols
   if rem(col, 2) == 1
       B(:, col) = A(end:-1:1, col);
   else
       B(:, col) = A(:, col);
   end
end

end