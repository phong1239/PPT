function [c,n] = NghiemHamTiepTuyen(fs,a,b,saiso)
    f = str2func(['@(x)',fs]); 
    d1f = matlabFunction(diff(str2sym(fs)));
    d2f = matlabFunction(diff(str2sym(fs),2));
    if and(prod(d1f(linspace(a,b,4)))<=0,prod(d2f(linspace(a,b,4)))<=0)
        c = 'd1f và d2f không dc đổi dấu trên [a,b]';
        n = ' ';
    else
        c = (a+b)/2;
        n = 0;
        while(1)
            y = c - f(c)/d1f(c);
            if(abs(y - c) < saiso)
                c = y;
                break;
            else
                c = y;
                n = n + 1;
            end
        end
        c = num2str(c);
        n = num2str(n);
    end
end