function b = zad7(A)

[r, c] = size(A);

b = zeros(c, 1);
for row = 1:r
    NewMax = -inf;
    for col= 1:c
        if A(row, col) > NewMax
            NewMax = A(row, col);
            b(row) = col;
        end
        
    end
end

end 