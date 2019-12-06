close
clear
f = @(x) exp(x)/2 .* cos(x.^2 / 3);
% a)
x = linspace(1, 6, 100);
xp = linspace(min(x), max(x), 8);
p = lSquares(xp, f(xp), 7)
px = polyval(p, x);
plot(x, f(x));
hold on;
plot(x, px, 'red');
% b)
h = @(x) polyval(p, x) - 35;
x01 = zeroSecant(h, 4.5, 5, 10^-5, 100);
x02 = zeroSecant(h, 5.5, 6, 10^-5, 100);
x0 = [x01; x02]
scatter(x0, polyval(p, x0), 'blue');
% c)
h2 = @(x) polyval(p, x) - f(x);
xp1 = zeroSecant(h2, 4.5, 4.9, 10^-5, 100);
xp2 = zeroSecant(h2, 5.2, 5.5, 10^-5, 100);
xp = [xp1; xp2]
scatter(xp, f(xp), 'green');