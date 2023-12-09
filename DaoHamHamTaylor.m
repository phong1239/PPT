function [dx] = DaoHamHamTaylor(fx,x,h,pp,hscc)
    fx=str2func(['@(x)',fx]);
    if hscc == "O(h^2)"
        if pp=="Tiến"
            dx=(4*fx(x+h)-3*fx(x)-fx(x+2*h))/(2*h);
        elseif pp=="Lùi"
            dx=((3*fx(x)-4*fx(x-h)+fx(x-2*h))/(2*h));
       else 
            dx = (fx(x+h)-fx(x-h))/(2*h);
        end
    else
        if pp=="Tiến"
            dx=(fx(x+h)-fx(x))/(h);
        elseif pp=="Lùi"
            dx=(fx(x)-fx(x-h))/(h);
        else 
            dx = 0;
        end
    end
end