function b = zadatak5(A)
[rows, ~] = size(A);

r = 1;
c = 1;
currMin = A(1, 1);

glavna = diag(A);
sporedna = sum(rot90(eye(rows)) .* A);

[minG, iG] = min(glavna);
[minS, iS] = min(sporedna);

if minG(1) < currMin
   currMin = minG(1);
   r = iG(1);
   c = iG(1);
end

if minS < currMin
   currMin = minS(1);
   r = rows - iS(1) + 1;
   c = iS(1);
   
end

b = [r, c];

end