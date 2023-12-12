function [dx]=DaoHamHamTaylor(xi,yi,fx,h,x,ct,pp,hscc)
if ct=="xy"
    h=xi(2)-xi(1);
    n=(x-xi(1))/h +1;
    n=cast(n,'uint16');
    if hscc == "O(h^2)"
        if pp=="Tiến"
            dx=(4*yi(n+1)-3*yi(n)-yi(n+2))/(2*h);
        elseif pp=="Lùi"
            dx=((3*yi(n)-4*yi(n-1)+yi(n-2))/(2*h));
       else 
            dx = (yi(n+1)-yi(n-1))/(2*h);
        end
    else
        if pp=="Tiến"
            dx=(yi(n+1)-yi(n))/(h);
        elseif pp=="Lùi"
            dx=(yi(n)-yi(n-1))/(h);
        else 
            dx = 0;
        end
    end
else
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