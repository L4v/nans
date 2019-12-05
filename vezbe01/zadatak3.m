function b = zadatak3(A)

[rows, cols] = size(A);
b = zeros(rows, 1)';

for col = 1:cols
   i = 1;
   currMin = A(1, col);
   for row = 1:rows
      if A(row, col) < currMin
         currMin = A(row, col);
         i = row;
      end
      b(col) = i;
   end
end

end