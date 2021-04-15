  function[] = pptieptuyen(f,x0,delta)
    k = 1;hold on
   
    syms x;
    df = diff(f,x);
    while 1
        fprintf("STT %d", k)
        xn = double(x0 - subs(f,x,x0)/subs(df,x,x0))
        disp([k xn subs(f,x,xn)]);
        plot(k,subs(f,x,xn),'ro');
        if abs(subs(f,x,xn)) < delta
            break
        end
        k = k + 1;
        x0 = xn
    end
    fprintf("Vay ket qua la %d",xn)
  end
%cach goi ham
%syms x
% f= x^2 - sin(x) -50
%pptieptuyen(f,2,10^(-3))