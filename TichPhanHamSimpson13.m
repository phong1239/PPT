function I = TichPhanHamSimpson13(y,h)
    I = h/3*(y(1) + y(length(y)) + 4*sum(y(2:2:length(y)-1)) + 2*sum(y(3:2:length(y)-1)));
end