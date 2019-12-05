function b = zadatak7(A)

[rows, cols] = size(A);
b = zeros(rows, 1);

for row = 1:rows
    i = 1;
    currMax = A(row, 1);
   for col = 1:cols
       if A(row, col) > currMax
           currMax = A(row, col);
           i = col;
       end
   end
   b(row) = i;
end

end