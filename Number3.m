%% Assignment #3
% Zhenghao Zhu

%% Problem 1:
syms x y z t
P = @(x,y,z) 10+25/(z.^2+1)+sin(2*x.^2+y.^3+z);
% A)
Px = diff(P(x,y,z), x);
Py = diff(P(x,y,z), y);
Pz = diff(P(x,y,z), z);

fx = @(x,y,z)subs(Px);
fy = @(x,y,z)subs(Py);
fz = @(x,y,z)subs(Pz);

fx = fx(1,0,-2) % Partial derivative of x
fy = fy(1,0,-2) % Partial derivative of y
fz = fz(1,0,-2) % Partial derivative of z

% B)
Pt = P(2*t-1,exp(2*t-2)-1,t^3-t-2);
ft = @(t)subs(Pt);
g = diff(ft(t),t);
gt=@(t)subs(g);
dPdt_x = gt(1)*fx;
dPdt_y = gt(0)*fy;
dPdt_z = gt(-2)*fz;

dPdt_sum = dPdt_x + dPdt_y + dPdt_z

%% Problem 2:
f = @(x,y) 2*x.^4-x.^2+3*y.^2;

fxx = diff(f(x,y),x,x)
fyy = diff(f(x,y),y,y)
fxy = diff(f(x,y),x,y)

%% Problem 3:
syms x y z
integral = int(int(int(1,[1 x + 2]), [0 x^2]), [0 2])

%% Problem 4:
syms n
S1 = symsum((2)/(n*(n+1)), n, 1, Inf)
S2 = symsum((-1^(n+1))/n, n, 1, Inf)
S3 = symsum((4*(-1)^n)/(2*n+1), n, 0, Inf)
S4 = symsum(((-1)^n)/(factorial(n)), n, 0, Inf)
