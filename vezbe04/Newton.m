function [zero, it] = Newton(f, df, x0, errMax, itMax)
    for it = 1:itMax
        zero = x0 - f(x0)/df(x0);

        fZero = f(zero);
        if abs(fZero) < errMax
            return
        end
        x0 = zero;
    end
end