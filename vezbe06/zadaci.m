close
clear
%%
% 1.)
x = [0 1.25 2.5 3.75 5];
fX = [1.7499 0.9830 1.2554 3.0802 2.3664];
% a)
scatter(x, fX);
hold on;
% b)
p = lSquares(x, fX, 3)
xs = linspace(min(x), max(x), 100);
px = polyval(p, xs);
plot(xs, px, 'red');

%%
% 2.)
close
clear
x = [1 2 3 5 6];
fx = [2 4 4 1 3];
% a)
scatter(x, fx);
hold on;
% b)
p = lSquares(x, fx, 4);
xs = linspace(min(x), max(x), 100);
px = polyval(p, xs);
plot(xs, px, 'red');
% c)
scatter(4, polyval(p, 4), 'green');

%%
% 3.)
close
clear
x = linspace(-pi, pi, 100);
f = @(x) x.^2 .* sin(x);
% a)
plot(x, f(x));
hold on;
% b)
xp = linspace(min(x), max(x), 4);
p = lSquares(xp, f(xp), 3);
px = polyval(p, x);
plot(x, px, 'red');
% c)
h = @(x) f(x) - polyval(p, x);
xp1 = Secant(h, -1/2, 1/2, 10^-5, 100)
scatter(xp1, f(xp1), 'green');


%%
% 4.)
close
clear
x = [0 1 2 3 4 5];
fx = [5 3 5 1 3 5];
% a)
scatter(x, fx);
hold on;
% b)
p = lSquares(x, fx, 5);
xs = linspace(min(x), max(x), 100);
px = polyval(p, xs);
plot(xs, px, 'red');
% c)
dp = polyder(p);
fp = @(x) polyval(p, x);
fdp = @(x) polyval(dp, x);
xMin = zeroFalsePosition(fdp, 3, 4, 10^-5)
xMax = zeroFalsePosition(fdp, 4, 5, 10^-5)
scatter([xMin, xMax], [fp(xMin), fp(xMax)], 'green');

%%
% 5.)
close
clear
f = @(x) x.^3 .* cos(x);
% a)
x = linspace(-pi/2, 5*pi/9, 6);
p = lSquares(x, f(x), 5);
xs = linspace(min(x), max(x), 100);
px = polyval(p, xs);
plot(xs, px, 'red');
hold on;
% b)
fp = @(x) polyval(p, x);
h = @(x) polyval(p, x) + 0.5;
x01 = zeroFalsePosition(h, min(xs), -1.25, 10^-5);
x02 = zeroFalsePosition(h, -1.25, -0.5, 10^-5);
x03 = zeroFalsePosition(h, 1, max(xs), 10^-5);
x0 = [x01; x02; x03]
scatter(x0, fp(x0), 'green');