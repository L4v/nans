function d = diametar(A)

MaxDist = -inf;
MaxPts = zeros(2, 2);
[r, ~] = size(A);

% a)
for row = 1:r
    for row1 = 1:r
        TmpDist = sqrt((A(row, 1) - A(row1, 1))^2 + (A(row, 2) - A(row1, 2))^2);
        if(TmpDist > MaxDist)
            MaxDist = TmpDist;
            MaxPts = [A(row, 1) A(row, 2); A(row1, 1) A(row1, 2)];
        end
    end
end

d = MaxDist;

% b)
scatter(MaxPts(:, 1), MaxPts(:, 2));

end