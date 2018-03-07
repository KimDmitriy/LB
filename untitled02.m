I = eye(6,6);
k = sym('k');
d = det(k*I-A);
s = solve(d,k);
s = double(s);
s1 = abs(s);

if (s1>1)
disp('Система не устойчива')
end;

R = real(s);
Rm = min(R);
delta = 0.05;
tp = (1/abs(Rm))*(log(1/delta))

Ym = max(Y);
Yust = Y(1,length(Y));
Sigma = ((Ym-Yust)/Yust)*100
