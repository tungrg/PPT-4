function[xn,fn] = Bai06(f,phi,a,b,x0,Df)
    k=1; hold on

    while 1
        xn = phi(x0);
        disp([k xn f(xn)]);
        plot(k,f(xn),'ro');
        if abs(f(xn)) < Df, break, end
        x0 = xn;
        k=k+1;
    end;
end
%cach goi ham
%pplap(@(x) x + sin(x) - 2, @(x) 2 - sin(x),1,1.1,1.05,10^(-3))