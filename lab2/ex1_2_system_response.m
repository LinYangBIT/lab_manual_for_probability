clear all;
close all;
clc;

nr = 10000; % number of realizations
ns = 200; % Number of samples of a process
b = [1];
a = [1.0000 -1.1314 0.6400];
nn = 0:ns-1;
ksi = zeros(nr,ns);
for i=1:nr
    y = randn(1,ns) * 5 + 0; % 5 is the standard deviation and 0 is the mean.
    x = filter(b,a,y);
    ksi(i,:) = x;
    figure;
   % plot(nn,x,'r',nn,y,'b'); 
    title('System Response [3120210726]');
    xlabel('Sample Point');
    legend('input','output');
    pause;
end
xmin = min(min(ksi));
xmax = max(max(ksi));
xspace = 50;
x = linspace(xmin,xmax,xspace);

n=50;
Fxn = zeros(1,xspace);
for ii = 1:xspace
thisx = x(ii);
ksin = ksi(:,n);
Fxn(ii) = sum(ksin < thisx) / Om;
end
subplot(2,1,1); plot (x,Fxn);
