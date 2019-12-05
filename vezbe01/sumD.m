function [s, err] = sumD(A)
s = 0;
err = 0;
[rows, cols] = size(A);
if rows ~= cols
   err = 1;   
   return;
end

for row = 1:rows
   for col = 1:cols
      if row == col          
        s = s + A(row, col) ;
      end
   end
end

% ili, ako je dozvoljeno, umesto cele funkcije: s = sum(diag(A));

end