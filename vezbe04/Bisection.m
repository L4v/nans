function [zero, it] = Bisection(f, a, b, errMax)
    it = 1;
    while true
        zero = (a + b)/2;

        fZero = f(zero);
        if abs(fZero) < errMax || abs(b - a) < errMax
            return
        end

        if f(a)*fZero < 0
            b = zero;
        else
            a = zero;
        end
        it = it + 1;
    end
end