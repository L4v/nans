close
clear
%%
% 1.)
close 
clear
f = @(x)sin(x);
x = linspace(pi/3, 4*pi/3, 100);
% a)
plot(x, f(x));
hold on;
% b)
x0 = Bisection(f, min(x), max(x), 10^-5)
scatter(x0, f(x0), 'red');

%%
% 2.)
close
clear
f = @(x) cos(x);
x = linspace(pi/3, 4*pi/3);
% a)
plot(x, f(x));
hold on;
% b)
x0 = Secant(f, min(x), 2, 10^-5, 100)
scatter(x0, f(x0), 'red');

%%
% 3.)
close
clear
f = @(x)sin(2*x);
x = linspace(pi/4, 7*pi/4, 100);
% a)
plot(x, f(x));
hold on;
% b)
x01 = Secant(f, min(x), 2, 10^-5, 100);
x02 = Secant(f, 2, pi, 10^-5, 100);
x03 = Secant(f, 4, max(x), 10^-5, 100);
x0 = [x01; x02; x03]
scatter(x0, f(x0), 'red');

%%
% 4.)
close
clear
f = @(x) x.^2 - x + 3;
g = @(x) exp(x);
x = linspace(0, 2, 100);
% a)
plot(x, f(x), 'blue');
hold on;
plot(x, g(x), 'red');
% b)
% h : f(x) = g(x) -> f(x) - g(x) = 0 = h(xP)
h = @(x) f(x) - g(x);
xP = Secant(h, min(x), max(x), 10^-5, 100)
scatter(xP, f(xP), 'green'); % moze i g(xP)

%%
% 5.)
close
clear
f = @(x) x.^2 - 2;
g = @(x) -x.^2 + 2;
x = linspace(-2, 2, 100);
% a)
plot(x, f(x), 'blue');
hold on;
plot(x, g(x), 'red');
% b)
h = @(x) f(x) - g(x);
x01 = Secant(h, min(x), 0, 10^-5, 100);
x02 = Secant(h, 0, max(x), 10^-5, 100);
x0 = [x01; x02]
scatter(x0, f(x0), 'green');

%%
% 6.)
close
clear
f = @(x) sin(2*x) - x;
x = linspace(0, 2*pi);
% a)
plot(x, f(x));
hold on;
% b)
syms x;
df = matlabFunction(diff(f(x), x));
xMax = Secant(df, 0, 1, 10^-5, 100);
xMin = Secant(df, 5, 6, 10^-5, 100);
xExtremum = [xMax; xMin;]
scatter(xExtremum, f(xExtremum), 'green');