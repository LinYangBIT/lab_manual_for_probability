clear all;
close all;
clc;

R = 5000;
lambda = 5*10^(-6);
alfa = 4;
noise = 10^(-13);
threshold = 0;
xRx = 0;
yRx = 0;
xTx = 0;
yTx = 100;

n = zeros(1,5);
p = zeros(1,5);
j = 1;

for i = 2:6
    n(j) = 10^i;
    p(j) = ex4_outage_probability(10^i);
    j = j + 1;
end

semilogx(n,p);
axis([-inf,inf,0,0.5]);
title('Outage probability [3120210726]');
xlabel('N');
ylabel('probability');
