function I = TichPhanHamHinhThang(y,h)
  I = h/2*(y(1) + y(length(y)) + 2*sum(y(2:1:length(y)-1)));
end