function B = zad6(A)

for row = 1:size(A)
    if mod(row, 2) == 1
        B(row, :) = flip(A(row, :));
    else
        B(row, :) = A(row, :);
    end
end

end