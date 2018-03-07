f = fopen('C:\Users\kimdi\Desktop\ЛБ\input.txt'); #change to your folder
for i = 1:5
    str = '';
    C = textscan(f, '%s', 1);
    for k = 1:length(C)
        str = [str char(C{k}) ' '];
    end;
    eval(['arr',num2str(i), ' = str2num(str);']);
end;
X = arr1;
U = arr2;
N = arr3;
Y = arr4;
T = arr5;

x = length(X);
u = length(U);
n = length(N);

A = randn(x);
B = randn(u, x);
E = randn(n, x);

t = 0;
while t < T
    X = X*A + U*B + N*E;
    t = t + 1;
end

C = randn(x);
D = randn(u, x);
F = randn(n, x);

Y = X*C + U*D + N*F;
dlmwrite('output.txt', Y);
