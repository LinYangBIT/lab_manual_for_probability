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
    y = randn(1,N) * 5 + 0;
    x = filter(b,a,y);
    ksi(ii,:) = x;
end
xmin = min(min(ksi));
xmax = max(max(ksi));
xspace = 50;
x = linspace(xmin,xmax,xspace);

n = 50;
Fxn = zeros(1,xspace);
for ii = 1:xspace
    thisx = x(ii);
    ksin = ksi(:,n);
    Fxn(ii) = sum(ksin<thisx)/Om;
end
subplot(3,1,1);
plot(x,Fxn);
title('Cumulative Density Function [3120210726]');
legend('N = 50');
xlabel('x');
ylabel('F(x)');

n = 125;
for ii = 1:xspace
    thisx = x(ii);
    ksin=ksi(:,n);
    Fxn(ii) = sum(ksin<thisx)/Om;
end
subplot(3,1,2);
plot(x,Fxn);
legend('N = 125');
xlabel('x');
ylabel('F(x)');

n = 175;
for ii = 1:xspace
    thisx = x(ii);
    ksin=ksi(:,n);
    Fxn(ii) = sum(ksin<thisx)/Om;
end
subplot(3,1,3);
plot(x,Fxn);
legend('N = 175');
xlabel('x');
ylabel('F(x)');