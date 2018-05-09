%% Matlab Assignment #2:

%% Problem 1: [DONE]
x = linspace(-2,2,25);
y = x;
[x,y] = meshgrid(x,y);
z = x.*exp(-x.^2-y.^2);
[C,h] = contour3(x,y,z,9);
set(h,'LineWidth',2)
colorbar;
%% TESTS
r = linspace(1,3,50);
theta = linspace(0,2*pi,50);
[r,theta] = meshgrid(r,theta);
x = r.*cos(theta);
y = r.*sin(theta);
z = r;
surf(x,y,z); %6 is maybe done.

%% Problem 2: [DONE]
syms x y
f = @(x,y) (x^3) + (y^3) - (3*x*y);
g = @(x,y) x + (3*y) - 7;
fsurf(f , [-1 4 -1 4]);
hold on
fsurf(g , [0 2 1 3],'g');
view([-3 , 1 , -1]);
hold off
%% Problem 3:
o=linspace(0,2*pi,50);
l=linspace(0,5,50);
[o,l]=meshgrid(o,l);
x=l;
y=sqrt(5).*cos(o);
z=5*l;
surf(x,y,z)
hold on
u = linspace(0,2*pi,50);
v = linspace(0,5,50);
[u,v] = meshgrid(u,v);
x = 2*cos(u);
y = 2*sin(u);
z = v;
surf(x, y, z);
hold off
%% Problem 4:
t=linspace(0,pi,30);
h=linspace(0,2*pi,30);
[t,h]=meshgrid(t,h);
y=t;
x=(exp(t).*sin(t)).*cos(h);
z=(exp(t).*sin(t)).*sin(h);
surf(x,y,z)
%% Problem 5
t=linspace(0,2,20);
s=linspace(0,1,20);
[s,t]=meshgrid(s,t);
x=t;
y=(-t+2)*s;
z=12-3*x-2*y;
surf(x,y,z)
hold on 
z=0*t;
view ([3,-2,1])
surf(x,y,z,'FaceColor','g')
hold off
%% Problem 6:
u=linspace(1,9,50);
h=linspace(0,2*pi,50);
[u,h]=meshgrid(u,h);
x=u.*cos(h);
y=u.*sin(h);
z=sqrt(x.^2+y.^2);
surf(x,y,z)