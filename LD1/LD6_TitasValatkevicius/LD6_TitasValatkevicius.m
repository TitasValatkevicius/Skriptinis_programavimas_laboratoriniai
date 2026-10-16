% 6 Laboras

%1 uzduotis


x = [-2 -1 0 1 2]

y = skaicsinc(x)


% 2 uzduotis

clear
clc

global x y

x = 2*pi:-0.1:-2*pi;
y = zeros(size(x));

funkcija_minus
funkcija_plius

figure

plot(x, y, '-.k+')

grid on
xlabel('x')
ylabel('y')
title('y(x)')

whos global


% 3 uzduotis

x = -1:0.1:1;

graftancotan(x)

a = graftancotan(x)

[a, b] = graftancotan(x)