function[] = bai09()
    e = 50000;
    i = 30000;
    l = 600;
    w0 = 2.5;
    syms x;
    wx = w0/((120*e*i*l))*(-x^5 + double(2*l^2)*x^3 - double(l)^4*x)
    df = simplify(diff(wx,x))
    ezplot(wx,[0,600])
end