
% NE RADI
function x = mpol(f, interval, tol, itmax)
a = interval(1);
b = interval(end);
it = 0;
while(abs(b - a) >= tol && it < itmax)
    x = interval(floor(size(interval, 2) / 2));
    if (feval(f, a) * feval(f, x) < 0)
       i1 = find(interval == a, 1);
       i2 = find(interval == x, 1);
    else
       i1 = find(interval == x, 1);
       i2 = find(interval == b, 1);
    end
    interval = interval(i1 : i2);
    
    a = interval(1);
    b = interval(end);
    it = it + 1;
end