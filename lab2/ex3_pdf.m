clear all;
close all;
clc;

a = [1 -1.1314 0.64];
b = [1];
Om = 1000000;
N = 200;
nn = 0:N-1;
ksi = zeros(Om,N);
for ii = 1:Om
    y = randn(1,N)*5+0;
    x = filter(b,a,y);
    ksi(ii,:) = x;
end
xmin = min(min(ksi));
xmax = max(max(ksi));
xspace = 50;
x = linspace(xmin,xmax,xspace);

n = 125;
for ii = 1:xspace
    thisx = x(ii);
    ksin=ksi(:,n);
    Fxn(ii) = sum(ksin<thisx)/Om;
end
deltax=x(2)-x(1);
fxn=hist(ksin,x)/Om/deltax;
subplot(2,1,1);
plot(x,fxn);
title('Probability Density Function [3120210726]');
legend('N = 125');
xlabel('x');
ylabel('f(x)');

n = 175;
for ii = 1:xspace
    thisx = x(ii);
    ksin=ksi(:,n);
    Fxn(ii) = sum(ksin<thisx)/Om;
end
deltax=x(2)-x(1);
fxn=hist(ksin,x)/Om/deltax;
subplot(2,1,2);
plot(x,fxn);
legend('N = 175');
xlabel('x');
ylabel('f(x)');