clear all;
close all;
clc;

a = [1 -1.1314 0.64];
b = [1];
Om = 10^5;
N = 200;
nn = 0:N-1;
ksi = zeros(Om,N);
for ii = 1:Om
    y = randn(1,N) * 5 + 0;
    x = filter(b,a,y);
    ksi(ii,:) = x;
end

n1=50;
for n2=n1:n1+50
    [h,p,r]=hist2corr(ksi(:,n1),ksi(:,n2),x);
    %[n1 n2 r];
    R(n2)=r;
end
n=n1:n1+50;
plot(n,R(50:100));
title('Autocorrelation [3120170726]');
xlabel('n2');
ylabel('R(n1,n2)');

n1=100;
for n2=n1:n1+50
    [h,p,r]=hist2corr(ksi(:,n1),ksi(:,n2),x);
    %[n1 n2 r];
    R(n2)=r;
end
n=n1:n1+50;
figure(2);
plot(n,R(100:150));
title('Autocorrelation [3120170726]');
xlabel('n2');
ylabel('R(n1,n2)');