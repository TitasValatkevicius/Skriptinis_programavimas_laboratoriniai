
function y = skaicsinc(x)
% SKAICSINC Apskaiciuoja funkcijos sin(x)/x reiksmes.
% y = SKAICSINC(x) apskaiciuoja sin(x)/x, kai x ~= 0,
% o kai x = 0, grazina 1.
%
% Ivestis:
% x - skaicius arba vektorius.
%
% Isvestis:
% y - funkcijos reiksme.

y = ones(size(x))

ind = x ~= 0

y(ind) = sin(x(ind)) ./ x(ind)

end
