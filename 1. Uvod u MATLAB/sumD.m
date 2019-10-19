
function [s, err] = sumD(A)

[m, n] = size(A);
err = 0;
if m ~= n
    err = 1;
    return;
end

s = sum(diag(A));

end