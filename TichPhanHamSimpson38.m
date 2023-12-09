function I = TichPhanHamSimpson38(y,h,n)
    I = 0;
    for i = 1:3:n
        I = I + 3*h/8*(y(i) + y(i+3) + 3*y(i+1) + 3*y(i+2));
    end
end