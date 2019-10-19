function b = zad3(A)

[m, n] = size(A);

b = zeros(1, m);

for column = 1:n
    currentMin = inf;
    for row = 1:m
        if A(row, column) < currentMin
           currentMin = A(row, column); 
           b(column) = row;
        end
    end
end

end