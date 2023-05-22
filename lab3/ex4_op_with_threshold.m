clear all;
close all;
clc;

R = 5000;
lambda = 5*10^(-6);
alfa = 4;
noise = 10^(-13);
threshold = [-10:0.2:10];
xRx = 0;
yRx = 0;
xTx = 0;
yTx = 100;
no_realization = 10^5;
SINR = zeros(1,no_realization);

for i = 1:no_realization
    no_intf = poissrnd(lambda * pi * R^2);
    r_intf = R .* sqrt(rand(1,no_intf));
    theta = 2 * pi .* rand(1,no_intf);
    x_intf = r_intf .* cos(theta);
    y_intf = r_intf .* sin(theta);
    fading_intf = exprnd(1,[1,no_intf]);
    interference = fading_intf.*r_intf.^(-alfa);
    fading = exprnd(1,[1,1]);
    P_desired = fading .* sqrt((xRx-xTx).^2+ (yRx-yTx).^2).^(-alfa);
    SINR(i) = P_desired / (sum(interference) + noise);
end
SINR_dB = 10 * log(SINR);

for i = 1:length(threshold)
    s = 0;
    for j = 1:no_realization
        if SINR_dB(j) <= threshold(i)
            s = s + 1; 
        end 
    end
    p(i) = s / no_realization;
end

plot(threshold,p);    
title('Outage probability [3120210726]');
xlabel('threshold/dB');
ylabel('Outage probability');
