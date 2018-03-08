I = eye(6,6);
k = sym('k');
d = det(k*I-A);
s = solve(d,k);
s = double(s);
s1 = abs(s);

I = eye(6,6);
k = sym('k');
d = det(k*I-A);
s = solve(d,k);
s = double(s);
s1 = abs(s);
%-----------------------------------------
flag1=0;
flag2=0;

R=real(s); %здесь менять имя
Im=imag(s); %здесь менять имя

for i=1:length(R)
if ((R(i)>-1) && (R(i)<1))
% flag1 = flag1+1;
else
flag1=flag1+1;
end;
end
%
if Im == 0
    flag2=1;
end;

for i=1:length(Im)
if ((Im(i)>-1) && (Im(i)<1))
else
flag2=flag2+1;
end;
end

if flag1>0 && flag2>0
    disp('Система не устойчива')
else
    disp('Система устойчива')
end;
%-----------------------------------------
R = real(s);
Rm = min(R);
delta = 0.05;
tp = (1/abs(Rm))*(log(1/delta))

Ym = max(Y);
Yust = Y(1,length(Y));
Sigma = ((Ym-Yust)/Yust)*100
