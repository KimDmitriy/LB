I = eye(6,6);
k = sym('k');
d = det(k*I-A);
s = solve(d,k);
s = double(s);
s1 = abs(s);

if (s1>1)
disp('Система не устойчива')
end;
