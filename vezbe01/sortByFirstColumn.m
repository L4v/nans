function A = sortByFirstColumn(A)

[rows, ~] = size(A);

for i = 1:rows-1
   for j = 1:rows-i
       if A(j, 1) < A(j+1, 1)
           tmp = A(j, :);
           A(j, :) = A(j+1, :);
           A(j+1, :) = tmp;           
       end
   end
end
   
end