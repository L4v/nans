function s = fz1a(A, n)

els = unique(A);
[rows, cols] = size(A);
numels = size(els);
s = 0;
for el = 1:numels
    count = 0;
   for i = 1:rows*cols
       if A(i) == els(el)
          count = count + 1; 
       end
   end
   if count >= n
      s = s + els(el);
   end
end

end