% 1 uzduotis
% a)
V = -pi/2:0.5:3*pi
% b)
V2 = V.^2 
% c)
V3 = (V + V2)
% d)
V3 = V3'

% 2 uzduotis
% a)
Z = rand(1, 9)
Z = reshape(Z, 3, 3)
% b)
Z(:,2) = []
% c)
Z = Z'

% 3 uzduotis
% duomenys
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






% 2 klausimas

A = input('vektorius A:')
B = [A(end:-1:6) A(1:5)]
disp('Vektorius b yra:')
disp(B)