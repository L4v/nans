close
clear
f = @(x) x.*cos(2*x) - 2;
% a)
x = linspace(-3*pi/2, 3*pi/4);
plot(x, f(x));
hold on;
% b)
x00 = zeroSecant(f, min(x), -3, 10^-5, 100)
scatter(x00, f(x00), 'green');
% c)
syms x
df = matlabFunction(diff(f(x), x));
xMax = zeroSecant(df, -5, -4, 10^-5, 100)
xMin = zeroSecant(df, -4, -3, 10^-5, 100)
scatter([xMax, xMin], [f(xMax), f(xMin)], 'red');
% d)
clear x
x = linspace(-3*pi/2, 3*pi/4);
g = @(x) -sin(x).*exp(x) - 2;
h = @(x) f(x) - g(x);
plot(x, g(x), 'red');
x01 = zeroSecant(h, -4, -3, 10^-5, 100);
x02 = zeroSecant(h, -3, -2, 10^-5, 100);
x03 = zeroSecant(h, -2, -0.5, 10^-5, 100);
x04 = zeroSecant(h, -0.5, 1, 10^-5, 100);
x0 = [x01; x02; x03; x03]
scatter(x0, f(x0), 'blue');