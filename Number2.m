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
syms y
x = linspace(-2,2,50);
z = 5-y*y;
fsurf(z, [-2 2]);
hold on
u = linspace(0,2*pi,50);
v = linspace(0,5,50);
[u,v]=meshgrid(u,v);
x = 2*cos(u);
y = 2*sin(u);
z = v;
surf(x,y,z);
hold off

%% Problem 4: [DONE]
t = linspace(0,pi,30);
h = linspace(0,2*pi,30);
[t,h] = meshgrid(t,h);
x = (exp(t).*sin(t)).*cos(h);
y = t;
z = (exp(t).*sin(t)).*sin(h);
surf(x,y,z)
xlabel('x')
ylabel('y')
zlabel('z')
view([0, 2, -1]);

%% Problem 5 [DONE]
t = linspace(0,12,50);
s = linspace(0,12,50);
[s,t]=meshgrid(s,t);
x = s;
y = t;
z = 12 - (2/3)*s - (1/3)*t;
surf(x,y,z)
hold on 
view ([3,-2,1])
surf(x,y,z)
hold off

%% Problem 6: [DONE]
r = linspace(1,3,50);
theta = linspace(0,2*pi,50);
[r,theta] = meshgrid(r,theta);
x = r.*cos(theta);
y = r.*sin(theta);
z = r;
surf(x,y,z);