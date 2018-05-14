%% Matlab Assignment #2:
% Zhenghao Zhu

%% Problem 1: [DONE]
x = linspace(-2,2,25);
y = x;
[x,y] = meshgrid(x,y);
z = x.*exp(-x.^2-y.^2);
[C,h] = contour3(x,y,z,9);
set(h,'LineWidth',2)
colorbar;

%% Problem 2: [DONE]
syms x y
f = @(x,y) (x^3) + (y^3) - (3*x*y);
g = @(x,y) x + (3*y) - 7;
fsurf(f , [-1 4 -1 4]);
hold on
fsurf(g , [0 2 1 3],'g');
view([-3 , 1 , -1]);
hold off

%% Problem 3: [NOT DONE]
r= linspace(0,2,50);
t = linspace(0,2*pi,50);
[r,t] = meshgrid(r,t);
x = r.*cos(t);
y = r.*sin(t);
z = 5 - y.^2;
surf(x,y,z);

%% Problem 4: [NOT DONE]
u = linspace(0,2*pi,30);
v = linspace(0,pi,30);
[u,v] = meshgrid(u,v);
x = u;
y = v;
z = (exp(u).*sin(u));
surf(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
view([0, 2, -1]);

%% Problem 5 [DONE]
u = linspace(0,4,20);
v = linspace(0,1,20);
[u,v] = meshgrid(u,v);
x = u;
y = (6-(3*u/2)).*v;
z = 12 - 3.*x - 2.*y;
surf(x,y,z)
view([3,-2,1])

%% Problem 6: [DONE]
r = linspace(1,3,50);
theta = linspace(0,pi/2,50);
[r,theta] = meshgrid(r,theta);
x = r.*cos(theta);
y = r.*sin(theta);
z = sqrt(x.^2+y.^2);
surf(x,y,z);