% R = real(s);
Rm = min(R);
delta = 0.05;
tp = (1/abs(Rm))*(log(1/delta))

Ym = max(Y);
Yust = Y(length(Y), 1);
Sigma = ((Ym-Yust)/Yust)*100
