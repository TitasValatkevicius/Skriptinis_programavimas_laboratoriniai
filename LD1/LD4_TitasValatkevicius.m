% 4 Laboratorinis

% 1 uzduotis
% a)
x = -2:0.1:2
y = -2:0.1:2

[x,y] = meshgrid(x,y)

F = sin(abs(x+y)/20) .* exp(-abs(x+y))

figure
surf(x,y,F)

colormap("jet")
shading("interp")

xlabel('x')
ylabel('y')
zlabel('z')
title('f(x,y) = sin(|x+y|/20) * e^{-|x+y|}')

view(90,30)
grid on

% b)
o = 0:0.1:2*pi
r = 0:0.1:1

[r,o] = meshgrid(r,o)

x = r .* cos(o)
y = r .* sin(o)

f = 1 - 2*x.^2 - 3*y.^2

figure
surf(x,y,f)
colormap("jet")
shading("interp")
xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y) = 1 - 2x^2 - 3y^2')
view(45,45)
grid on

% 2 uzduotis

x = -1:0.05:1;
y = -1:0.05:1;

[X,Y] = meshgrid(x,y)

Z = 1 - (X.^2 + Y.^2)

figure


surf(X,Y,Z)
shading interp
colormap([1 0 0])
xlabel('x')
ylabel('y')
zlabel('z')

figure
surf(X,Y,Z)
shading interp
colormap([0 1 0])
xlabel('x')
ylabel('y')
zlabel('z')

figure
surf(X,Y,Z)
colormap([0 0 1])
shading interp
xlabel('x')
ylabel('y')
zlabel('z')