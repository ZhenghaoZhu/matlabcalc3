%% Matlab Day 10

%% Problem #2 on Fall 17 Final
syms x y z t
P = @(x,y,z) 10+25/(z.^2+1)+sin(2*x.^2+y.^3+z);
P(1,0,-2)
%%
Px = diff(P(x,y,z),x);
Py = diff(P(x,y,z),y);
Pz = diff(P(x,y,z),z);
%%
fx = @(x,y,z)subs(Px);
fy = @(x,y,z)subs(Py);
fz = @(x,y,z)subs(Pz);
%%
fx(1,0,-2)
fy(1,0,-2)
fz(1,0,-2)
%%
Pt = P(2*t-1,exp(2*t-2)-1,t^3-t-2);
ft = @(t)subs(Pt);
g = diff(ft(t),t);
gt=@(t)subs(g);
gt(1)

%% Problem #3 on Fall 17 Final
syms x y
f = @(x,y) -3*y.^3 - 4*x.^2 + 8*x + 9*y;
