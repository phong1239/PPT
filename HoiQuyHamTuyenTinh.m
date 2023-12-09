function [A,B] = HoiQuyHamTuyenTinh(X,Y)
    n = length(X);
    sumX = 0;
    sumY = 0;
    sumXY = 0;
    sumX2 = 0;
    for i = 1:1:n
        sumX = sumX + X(i);
        sumY = sumY + Y(i);
        sumXY = sumXY + X(i)*Y(i);
        sumX2 = sumX2 + X(i)*X(i);
    end
    Xa = sumX/n;
    Ya = sumY/n;
    A = (n*sumXY - sumX*sumY)/(n*sumX2 - sumX^2);
    B = Ya -A*Xa;
end