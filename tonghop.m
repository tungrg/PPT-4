%Bai 04
    %phuong phap tiep tuyen
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
  %bai 4 a)
  %syms x
  % f= x^2 - sin(x) -50
  %pptieptuyen(f,2,10^(-3))
  % bai 4 b)
  % syms x
  % f= x^3 - 6*x^2 + 2*x + 25
  %pptieptuyen(f,4,10^(-3))
%bai 06
  %phuong phap day cung
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
   
