function B = zad8(A)

MainDiag = eye(size(A));
MainDiag = A .* MainDiag;


AntiDiag = rot90(eye(size(A)));
AntiDiag = A .* AntiDiag;

MainDiag = rot90(MainDiag, 3);
AntiDiag = rot90(AntiDiag);

XDiag = MainDiag + AntiDiag;
[r, ~] = size(A);

if(mod(r,2) == 1)
    XDiag(ceil(size(A) / 2), ceil(size(A) / 2)) = XDiag(ceil(size(A) / 2), ceil(size(A) / 2)) * 0.5;
end

ZeroXDiag = ones(size(A)) - eye(size(A)) - rot90(eye(size(A)));

if(mod(r,2) == 1)
    ZeroXDiag(ceil(size(A) / 2), ceil(size(A) / 2)) = 0;
end

ZeroXDiag = ZeroXDiag .* A;

B = XDiag + ZeroXDiag;

end