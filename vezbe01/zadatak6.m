function B = zadatak6(A)
[rows, cols] = size(A);
B = zeros(rows, cols);
for row = 1:rows
   if rem(row, 2) == 1
       B(row, :) = A(row, end:-1:1);
   else
       B(row, :) = A(row, 1:end);
   end
end

end