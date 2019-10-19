function B = zad9(A)

[~, c] = size(A);
B = zeros(size(A));
for col = 1:c
   if mod(col, 2) == 1
       B(:, col) = flip(A(:, col));
   else
       B(:, col) = A(:, col);
   end
end

end