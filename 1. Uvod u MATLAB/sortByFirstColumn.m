function sorted = sortByFirstColumn(I)


[r, ~] = size(I);
sorted = I;
for i = 1:r
   for j = 1:r-i
       X = sorted(j, :);
       Y = sorted(j + 1, :);
       if X(1, 1) < Y(1, 1)
          Tmp = X;
          sorted(j, :) = Y;
          sorted(j + 1, :) = Tmp;
       end
       
   end
end

end