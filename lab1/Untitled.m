clear
xmin = 0;
xmax = 40;
num=50000; %数据数量
n=1; 
Omiga=1; %均值
data=zeros(1,num);
y = @(x,Omiga)(2*x/Omiga)*exp(-x^2/Omiga);
while n<num
x = (xmax-xmin)*rand(1)-xmin;
fx=y(x,Omiga);
Y = rand(1);
if Y<=fx
data(1,n) = x;
n = n+1;
end
end
ksdensity(data)
title('Rayleigh PDFs [3120210726]')
ylabel('PDF')
xlabel('x')