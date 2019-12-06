close
clear
%%
% 1.)
close
clear
x = [0.7854 1.9635 3.1416 4.3197 5.4978];
fX = [0.7071 0.9239 0 -0.9239 -0.7071];
% a)
scatter(x, fX);
hold on;
% b)
p = lagrangeInterp(x, fX);
xs = linspace(min(x), max(x), 100);
pX = polyval(p, xs)
plot(xs, pX, 'red');

%%
% 2.)
close
clear
x = [1 2 4];
fX = [4 5 4];
% a)
scatter(x, fX);
hold on;
% b)
p = lagrangeInterp(x, fX);
xs = linspace(min(x), max(x), 100);
pX = polyval(p, xs);
plot(xs, pX, 'red');
% c)
scatter(3, polyval(p, 3), 'green');

%%
% 3.)
close
clear
x = [1 4 5];
fX = [1 3 3];
% a)
scatter(x, fX);
hold on;
% b)
p = lagrangeInterp(x, fX);
xs = linspace(min(x), max(x));
pX = polyval(p, xs);
plot(xs, pX, 'red');
% c)
h = @(x) polyval(p, x) - 2;
x2 = Secant(h, min(x), max(x), 10^-5, 100)
scatter(x2, polyval(p, x2), 'green');

%%
% 4.)
close
clear
x = [1 3 5];
fX = [0 3 0];
% a)
scatter(x, fX);
hold on;
% b)
p = lagrangeInterp(x, fX);
xs = linspace(min(x), max(x), 100);
pX = polyval(p, xs);
plot(xs, pX, 'red');
% c)
f = @(x) 0*x + 1;
plot(xs, f(xs), 'blue')
% d)
h = @(x) polyval(p, x) - f(x);
x01 = Secant(h, min(xs), 2, 10^-5, 100);
x02 = Secant(h, 4, 5, 10^-5, 100);
x0 = [x01; x02]
scatter(x0, polyval(p, x0), 'green');

%% 
% 5.)
close
clear
x = linspace(-pi, pi);
f = @(x) x.^2 .* sin(x);
% a)
plot(x, f(x));
hold on;
% b)
% polinom 3 stepena -> 4 tacke
xp = linspace(min(x), max(x), 4);
scatter(xp, f(xp), 'green');
% c)
p = lagrangeInterp(xp, f(xp))
px = polyval(p, x);
plot(x, px, 'red');

%%
% 6.)
close
clear
x = [0.1 0.3 0.6 1.2];
fX = [1.023 1.261 2.368 9.064];
p = lagrangeInterp(x, fX);
a0 = p(4)
a1 = p(3)
a2 = p(2)
a1 = p(1)

x = [0.1 0.3 0.6 1.2];
fX = [1.023 1.261 2.368 9.064];
