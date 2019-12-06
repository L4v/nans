function B = fz2a(B)

[n, ~] = size(B);
sdijag = rot90(eye(n)) .* B;
ckol = B(:, ceil(n/2));
sdijag = sdijag(sdijag ~= 0);

B(:, ceil(n/2)) = sdijag(:);
for row = 1:n
    for col = n:-1:1
       if n - col + 1 == row
          B(row, col) = ckol(row);
       end
    end
end
end