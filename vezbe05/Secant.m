function [zero, it] = Secant(f, a, b, errMax, itMax)
    for it = 1:itMax
        fA = f(a);
        fB = f(b);
        zero = b - fB*(b - a)/(fB - fA);

        fZero = f(zero);
        if abs(fZero) < errMax
            return
        end

        a = b;
        b = zero;
    end
end