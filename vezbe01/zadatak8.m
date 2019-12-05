function B = zadatak8(A)
    
[rows, ~] = size(A);

glavna = rot90(eye(rows) .* A, 3);
sporedna = rot90(rot90(eye(rows)) .* A);
B = A;
B = ~eye(rows) .* B + sporedna;
B = rot90(~eye(rows)) .* B + glavna;
end