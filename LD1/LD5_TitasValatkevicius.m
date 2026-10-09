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

