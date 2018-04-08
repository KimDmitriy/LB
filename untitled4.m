window = 3;
alpha=2/(window+1);

Nx = length(Xt);
Nx1 = length(Xt(:,1));
for i = 1:Nx
    Xf = zeros(Nx1, 1);
    Xf = Xt(:, i);
    EMAx = zeros(1, Nx1);
    EMAx(1) = Xf(1);
    for j=2:Nx1
        EMAx(j) = alpha*Xf(j) + (1-alpha)*EMAx(j-1);         
        EMA = EMAx';
     end 
     EMAxt(:, i) = EMA;
end

Ny = length(EMAxt);                     %recounting Y
Ny1 = length(EMAxt(:,1));               
for i = 1:Ny
    Xf1 = zeros(Ny1, 1);
    Xf1 = EMAxt(:, i);
    YwEMAx = C*Xf1 + D*U' + F*N;
    YtwEMAx(:,i) = YwEMAx;
end

ny = length(YtwEMAx);
ny1 = length(YtwEMAx(:,1));
for i = 1:ny
    Yf = zeros(ny, 1);
    Yf = YtwEMAx(:, i);
    EMAy = zeros(1, ny1);
    EMAy(1) = Yf(1);
    for j=2:ny1
        EMAy(j) = alpha*Yf(j) + (1-alpha)*EMAy(j-1);         
        EMA1 = EMAy';
    end 
     if (ny1==1)
        EMA1 = Yf(1);
    end;
     EMAyt(:, i) = EMA1;
end

plot(Yt)
hold on
plot(YtwEMAx)
plot(EMAyt)
