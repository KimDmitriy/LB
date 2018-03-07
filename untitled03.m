window = 3;
alpha=2/(window+1);

Nx = length(X);
EMAx = zeros(1, Nx);
EMAx(1) = X(1);
for i=2:Nx
     EMAx(i) = alpha*X(i) + (1-alpha)*EMAx(i-1);
end

YwEMA = EMAx*C + U*D + N*F;
Ny = length(YwEMA);
EMAy = zeros(1, Ny);
EMAy(1) = YwEMA(1);
for i=2:Ny
     EMAy(i) = alpha*YwEMA(i) + (1-alpha)*EMAy(i-1);
end

plot(Y);
hold on;
plot(EMAy);
