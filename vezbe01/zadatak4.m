function b = zadatak4(A)

[rows, ~] = size(A);
sporedna = rot90(~eye(rows));
NewA = A .* sporedna;

b = sum(NewA, 2);

end