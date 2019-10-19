function b = zad5(A)

MainDiag = eye(size(A));
AntiDiag = rot90(MainDiag);

XDiags = MainDiag + AntiDiag;
XDiags(ceil(size(A)/2), ceil(size(A) / 2)) = 1;
XDiags = XDiags.*A
MinVal = min(min(XDiags));
[Row, Col] = find(A == MinVal);
b = [Row, Col];
end