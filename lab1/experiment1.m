y = rand(1000,1);
Omiga = 1;
syms x
for n = 1:1:1000;
    a = vpasolve((2*x/Omiga)*exp(-x^2/Omiga) == y(n),x)
    if isempty(a)
        continue
    else
        y(n) = a(1);
    end
end
ksdensity(y);