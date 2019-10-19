function b = zad4(A)

AntiDiag = ones(size(A)) - rot90(eye(size(A)));
b = sum(AntiDiag .* A, 2);

end