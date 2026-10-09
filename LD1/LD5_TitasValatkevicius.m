%1 uzduotis


x = -2:0.01:2
f = cos(sin(2*pi*x))

signalas.fx = f
signalas.x = x
pavadinimas = 'f(x) = cos(sin(2*pi*x))'

figure

plot(signalas.x, signalas.fx)
xlabel('x')
ylabel('f(x)')
title(pavadinimas)
grid on

%2 uzduotis

while true

    m = input('m= ')
    n = input('n= ')

    if m == n
        break
    end

    while m ~= n

        if m > n
            m = m - n
        else
            n = n - m
        end

    end

    disp(m)

end

%3 uzduotis

sakinys = input('Iveskite sakini: ', 's')

i = 1
pasalinta = 0

while i < length(sakinys)

    if sakinys(i) == ' ' && sakinys(i+1) == ' '
        sakinys(i+1) = []
        pasalinta = pasalinta + 1
    else
        i = i + 1
    end

end

disp(sakinys)

disp(['Pasalintu tarpu skaicius: ', num2str(pasalinta)])