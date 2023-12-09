function [c,n] = NghiemHamChiaDoi(f,a,b,saiso)
    f = str2func(['@(x)',f]);
    if f(a)*f(b) >= 0
        c = 'f(a)*f(b) phải < 0';
        n = ' ';
    else

        n = 0;
        while(1)
            c = (a + b) / 2 ;

            if f(c) * f(a) < 0
                b = c;
            else 
                a = c;
            end
            if (b - a < saiso)
                break;
            end
            n = n + 1 ;
        end
        c = num2str(c);
        n = num2str(n);
    end
 end