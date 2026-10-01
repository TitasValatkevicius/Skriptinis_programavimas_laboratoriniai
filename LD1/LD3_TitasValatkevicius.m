% 3 Laboratorinis darbas


% 1 Uzduotis
%a)
t = linspace(-pi, pi, 50)
y = sin(t)

figure
plot(t, y, 'r--')

%b)
x = linspace(-pi, pi, 50)
y1 = -x.^2 + 9
y2 = x.^3 - 2*x.^2 - 9

figure
plot(x, y1, x, y2)

%c)
t = linspace(-pi, pi, 50)
y = sin(t)

figure
plot(t, y, 'r--')

xlabel('t')
ylabel('y')
title('y(t) = sin(t)')
axis([min(t) max(t) min(y) max(y)])
legend('y(t) = sin(t)', 'Location', 'best')
grid on

x = linspace(-pi, pi, 50)

y1 = -x.^2 + 9
y2 = x.^3 - 2*x.^2 - 9

figure
plot(x, y1, x, y2)

xlabel('x')
ylabel('y')
title('Funkcijų grafikai')
axis([min(x) max(x) min([y1 y2]) max([y1 y2])])
legend('y(x) = -x^2 + 9', 'y(x) = x^3 - 2x^2 - 9', 'Location', 'best')
grid on


% 2 uzduotis

%a)
Matrica = [8 7 9 10
    6 8 7 9
    9 9 8 10
    5 7 6 8
    10 9 10 9
    7 8 9 8]

figure

subplot(2,1,1)
bar(Matrica')

xlabel('Laboratorinis darbas')
ylabel('Pažymys')
title('Studentų pažymiai')
ylim([0 10])

legend('Studentas 1', 'Studentas 2', 'Studentas 3', 'Studentas 4', 'Studentas 5', 'Studentas 6')

grid on

%b)
Matrica = [8 7 9 10
    6 8 7 9
    9 9 8 10
    5 7 6 8
    10 9 10 9
    7 8 9 8]

figure

subplot(2,1,1)
bar(Matrica')

xlabel('Laboratorinis darbas')
ylabel('Pažymys')
title('Studentų pažymiai')
ylim([0 10])
legend('Studentas 1', 'Studentas 2', 'Studentas 3', 'Studentas 4', 'Studentas 5', 'Studentas 6')
grid on


vid = mean(Matrica)

subplot(2,1,2)
stem(1:4, vid)

xlabel('Laboratorinis darbas')
ylabel('Vidurkis')
title('Laboratorinių darbų vidurkiai')
ylim([0 10])
grid on

%c)
Matrica = [8 7 9 10
    6 8 7 9
    9 9 8 10
    5 7 6 8
    10 9 10 9
    7 8 9 8]

figure

subplot(2,1,1)
bar(Matrica')

xlabel('Laboratorinis darbas')
ylabel('Pažymys')
title('Studentų pažymiai')
ylim([0 10])

legend('Jonas', 'Mantas', 'Tomas', 'Lukas', 'Paulius', 'Domas')

grid on


vid = mean(Matrica)

subplot(2,1,2)
stem(1:4, vid)

xlabel('Laboratorinis darbas')
ylabel('Vidurkis')
title('Laboratorinių darbų vidurkiai')
ylim([0 10])

grid on

%3 uzduotis
% 2 LD duomenys
A = 5
f = 5
q = 1,5
U1 = 3
U2 = 2
t = 0:0.001:1
s = A*sin(2*pi*f*t)
n = q*randn(size(t))
s = s+n
% a)
S1 = s(s > U1)
% b)
S2 = s
S2(abs(s) < U2) = 0
% c)
S3 = length(s)
% d)
S4 = length(S1)
% e)
Maziausia = min(S2)
Didziausia = max(S2)
%
figure
ind = s > U1

stem(t(ind), s(ind))
hold on

[minS, minInd] = min(s)
[maxS, maxInd] = max(s)

plot(t(minInd), minS, 'rv', 'MarkerFaceColor', 'r')
plot(t(maxInd), maxS, 'r^', 'MarkerFaceColor', 'r')

xlabel('Laikas, s', 'Color', 'b', 'FontSize', 14)
ylabel('Įtampa, V', 'Color', 'b', 'FontSize', 14)

title('Signalo reikšmės virš U1 ribos')

legend('s > U1', 'Minimali reikšmė', 'Maksimali reikšmė')

grid on