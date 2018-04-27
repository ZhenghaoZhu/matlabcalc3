%Matlab Day 1
%Date : Feb. 9th, 2018
%%Problem 1:
cos(2*pi/3)

%%Problem 2:
asin(-1/2)

%%Problem 3:
num2str(sqrt(exp(1)+pi),10) %num2str assigns sig figs

%%Problem 4:
sym(sinh(log(3))) %To get fraction instead of number, put sym in front of expression

%%Problem 5:
syms x %% declares x
factor(x^2-4) %% commands to factor

%%Problem 6:
syms a 
factor(x^3+a^3)

%%Problem 7;
fg1 = figure; %When there is not a semicolon, the information of the graph will be displayed.
ezplot(x^3-x,[-2,2])
title('Example of Graph')

%%Problem 7.5:
z = peaks(50);

figure
mesh(z)%% hacks %%

%%Problem 8:
ezplot(sin(x),[-pi,pi])
hold on
ezplot(x/2,[-pi,pi])
title('cheese doodles and kevin')
legend('sin(x)','x/2','location','southeast')
ylabel('y')

%%Problem 9:
fg3=figure
y=x*sin(x)
esplot(y,[0,2*pi])
hold on
ezplot(diff(y,x),[0.2*pi])
set(gca,'xtick',[0,pi/2,pi,3*pi/2,2*pi])
set(gca,'xticklabel',{0,'\pi/2','\pi','3\pi/2','2\pi'})
grid on
ylabel('y')
xlabel('x')

%%MatLab Day 2
% Date: 2/16/2018
%Name:______
%% Problem 1:
%% Circle Function
syms t 
x=2*cos(t)+2;
y=2*sin(t)+3;
h = ezplot(x,y,[0,2*pi]);
title('kevin''s Circle')
axis equal
h.Color ='red';
h.LineStyle = '--';
h.LineWidth = 0.5; 

%% Problem 2:
%% Hyperbola Function
f=@(x,y)x.^2-y.^2-3;
v = ezplot(f,[-5 5 -5 5]);
title('Hyperobla')
axis equal
v.Color='magenta';

%% Problem 3: 
%% Implicit Function
g=@(x,y)y.*sin(x)+x.*cos(y)-1;
ezplot(g,[-5 5 -5 5])
title('barnicles')

%% Problem 4:
%% Adding Vectors
a=[1,2,3];
b=[-1,-1,1];
a+b

%% Problem 5: 
%% Linear Combinations
2*a-3*b

%% Problem 6:
%% Dot Product
dot(a,b)

%% Problem 7: 
%% Cross Product
cross(a,b)

%% Problem 8:
%% Magnitude of a Vector
norm(a)
pretty(sym(norm(a)))

%% Problem 9:
%% Squaring and Array of numbers
c = [ 0,1,2,3,4,5,6,7,8,9];
plot(c,c.^2)

%% Problem 10:
%% Polygrams and their Areas
plot([0,3,5,2,0],[2,0,5,7,2],'om--');
title('kevin''s cheese doodles')
A = polyarea([0,3,5,2,0],[2,0,5,7,2]);
title(['Area =' num2str(A)])
axis equal

%% Matlab Day 3
% Date: Feb 23, 2018
%% #1:
a=[0,1,2,3,4,5,6,7,8,9];
a.^2
%% #2:
0:9
%% #3:
0:5.5
%% #4:
0:0.5:5.5
%% #5:
c=linspace(0,9,10)
%% #6:
x=linspace(-2,2,30);
y=4-x.^2;
plot(x,y)
%% #7:
t=linspace (0,6*pi);
x=t.*cos(t);
y=t.*sin(t);
plot(x,y)
%%  #8:
z=t;
plot3(x,y,z)
%% #9:
syms t
x=t*cos(t);
y=t*sin(t);
z=t;
ezplot3(x,y,z,[0,6*pi],'animate')

%% MatLab Day 5
% Date: March 9, 2018
%% Problem 1: Parametrizing the cylinder $x^2+y^2 = 4 $ where $ 0 \leq z \leq 5$. 
u = linspace(0,2*pi,100);
v = linspace(0,5,100);
[u,v] = meshgrid(u,v);
x = 2*cos(u);
y = 2*sin(u);
z = v;
surf(x, y, z)
axis equal
%% Problem 2:
u = linspace(0,2*pi,50);
v = linspace(0,5,50);
[u,v] = meshgrid(u,v);
x = 2*cos(u);
y = 2*sin(u);
z = v;
surf(x, y, z)
hold on
r= linspace(0,2,30);
[u,r] = meshgrid(u,r)
x = r.*cos(u);
y = r.*sin(u);
z = 5 + 0*r;
z2 = 0 + 0*r;
surf(x, y, z);
surf(x, y, z2);
hold off
%% Problem 3: Parametrize the sphere $x^2 + y^2+z^2 = 9$
v = linspace(0,pi,30);
[u,v] = meshgrid(u,v);
x = 3*sin(v).*cos(u);
y = 3*sin(v).*sin(u);
z = 3*cos(v);
surf(x, y, z);
%% Problem 4: Parametrizing the part of the plane $-x+2y+z = 6$ that lies inside the cylinder
u = linspace(0,2*pi,30);
r = linspace(0,2,30)
[u,r] = meshgrid(u,r);
x = r.*cos(u);
y = r.*sin(u);
z = 6+r.*cos(u)-2*r.*sin(u);
surf(x, y, z)
hold on
syms x y
f = 6+x-2*y;
ezsurf(f,[-2 2])

%% Matlab Day 6
%Date March 16,2018
%% #1
u=linspace(0,2*pi,30);
r=linspace(0,2,30);
[u,r]=meshgrid(u,r);
x=r.*cos(u);
y=r.*sin(u);
z=6+r.*cos(u)-2*r.*sin(u);
surf(x,y,z)
hold on
v=linspace(0,12,20);
[u,v]=meshgrid(u,v);
x=2*cos(u);
y=2*sin(u);
z=v;
surf(x,y,z)
hold on
syms x y
z=6+x-2*y;
ezsurf(z,[-2 2])
hold off
%% #2
u=linspace(0,2*pi,30);
v=linspace(-pi/4,pi/4,30);
[u,v]=meshgrid(u,v);
x=sec(v).*cos(u);
y=sec(v).*sin(u);
z=tan(v);
surf(x,y,z)
colorbar %just to add color bar to show altitude
%% %3
t=linspace(0,pi/2,30);
v=linspace(0.2*pi,30);
[t,v]=meshgrid(t,v);
x=t;
y=(t.*sin(t)).*cos(v);
z=(t.*sin(t)).*sin(v);
surf(x,y,z)

%% Matlab Day7
%4/11/2018
%% Generate a contour plot of $f(x,y)=x^3+y^3-3xy
x=linspace(-2,2,25);
y=x;
[x y]= meshgrid(x,y);
z=x.^3+y.^3-3*x.*y;
[C,h]=contour (x,y,z,-5:0.5:5)
clabel (C,h)
colorbar;
%% Generate a contour plot of $f(x,y)=x^3+y^3-3xy
surfc(x,y,z)
view([1 1 1]) %just fixed point of view ma htae lel ya tel
%% Plot a single level cure $z=0$.
f=@(x,y) x.^3+ y^3-3*x.*y;
ezplot(f,[-2 2])
%% Generate a 3-D contour map of $f(x,y)
x=linspace(-3,3,25);
y=x;
[x,y]=meshgrid(x,y);
z=x.*y.*exp(-x.^2-y.^2);
[C,h]=contour3(x,y,z,20,'k')
set(h,'LineWidth',2)
colorbar;
hold on;
surf(x,y,z)
shading interp
hold off;

%% Matlab 8
%% Date: April 13th, 2018
%% Problem 1:
%Parametrize the region R bounded by y=x, y=0, and x=2.
t=linspace(0,2,20);
s=linspace(0,1,20);
[s,t]=meshgrid(s,t);
x=t;
y=t.*s;
z=0*t;
surf(x,y,z,'FaceColor','green')
view([0 0 2])

%% Problem 2:
%2x+2y+z=4 that lies in the first octant
t=linspace(0,2,20);
s=linspace(0,1,20);
[s,t]=meshgrid(s,t);
x=t;
y=(-t+2)*s;
z=4-2*x-2*y;
surf(x,y,z)
hold on 
z=0*t;
surf(x,y,z,'FaceColor','g')
hold off

%% Problem 3:
%Parametrize the region R={(x,y)$R^2| 1<=x^2+y^2<=9, y>=0}
r=linspace(1,3,30);
theta=linspace(0,pi,30);
[r,theta]=meshgrid(r,theta);
x=r.*cos(theta);
y=r*sin(theta);
z=0*r;
surf(x,y,z,'FaceColor','g')
view([0 0 2])
axis equal
A='bluelines.jpg'