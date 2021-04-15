function[] = ppdaycung(f,a,b,delta)
    k = 1;hold on
    while 1
        fprintf("STT %d",k)
        c = a - (b-a)/(f(b) - f(a))*f(a);
        disp([k c f(c)]);
        plot(k,f(c),'ro');
        if abs(f(c)) < delta
            break
        end
        if f(a)*f(c) > 0
            a = c
        else f(b) * f(c) < 0
            b = c
        end
        k = k + 1;
    end
    disp(c)
end
%cach goi ham
%ppdaycung(@(x) x^2 - sin(x) - 50,0,8,3*10^(-3))