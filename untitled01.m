f = fopen('C:\Users\kimdi\Desktop\ЛБ\Новая папка\1.txt'); %input.txt
for i = 1:5
    str = '';
    C = textscan(f, '%s', 1);
    for k = 1:length(C)
        str = [str char(C{k}) ' '];
    end;
    eval(['arr',num2str(i), ' = str2num(str);']);
end;
X = arr1';
U = arr2;
N = arr3;
Y = arr4;
T = arr5;

x = length(X);
u = length(U);
n = length(N);
y = length(Y);

A = randn(x, x);

B = randn(x, u);
E = randn(x, n);

C = randn(y, x);
D = randn(y, u);
F = randn(y, n);

t = 0;
for t = 1:T
    N = randn(n, 1);
    X = A*X + B*U' + E*N;
    Y = C*X + D*U' + F*N;
    
    Xt(:,t) = X;
    Yt(:,t) = Y;
end

dlmwrite('output.txt', Y);
