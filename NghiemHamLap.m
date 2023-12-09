function [c,n] = NghiemHamLap(fs,a,b,saiso)
    f = str2func(['@(x)',fs]);
    df = matlabFunction(diff(str2sym(fs)));
    if prod(df(linspace(a,b,4)) >= 1)
        c = 'df(x) phải < 1';
        n = ' ';
    else
        n = 0;
        c = (a+b)/2;
        while(1)
            y = f(c);
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