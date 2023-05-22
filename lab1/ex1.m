clear
xmin = 0;
xmax = 40;
i=20000;  %Ä£ÄâÊı
n=1;    

Omiga=1;    
data=zeros(1,i);
y = @(x,Omiga)(2*x/Omiga)*exp(-x^2/Omiga);
while n < i
    x = (xmax-xmin)*rand(1)-xmin;
    fx=y(x,Omiga);
    Y = rand(1);
    if Y<=fx
        data(1,n)=x;
        n=n+1;
    end
end
n=1;    
Omiga=2;    
data1=zeros(1, i);
y = @(x,Omiga)(2*x/Omiga)*exp(-x^2/Omiga);
while n<i
    x = (xmax-xmin)*rand(1)-xmin;
    fx=y(x,Omiga);
    Y = rand(1);
    if Y<=fx
        data1(1,n)=x;
        n=n+1;
    end
end

ksdensity(data)
hold on
ksdensity(data1)
legend('Omiga=1','Omiga=2')
title('Rayleigh PDFs [3120210726]')
ylabel('PDF')
xlabel('x')