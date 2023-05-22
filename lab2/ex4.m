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
std(y)
n = 50;
ksin = ksi(:,n);
an = mean(ksin);
stdn = std(ksin);
aalln = mean(ksi);
stdalln = std(ksi);

subplot(2,1,1);
plot(nn,aalln);
title('Mean and standard deviation [3120210726]');
xlabel('sample');
ylabel('mean');
axis([0 N -1 1]);

subplot(2,1,2);
plot(nn,stdalln);
xlabel('sample');
ylabel('standard deviation');
axis([0 N 0 20]);