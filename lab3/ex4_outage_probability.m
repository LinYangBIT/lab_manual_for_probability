function [ p ] = ex4_outage_probability( no_realization )

    for i=1:no_realization
        no_intf = poissrnd(lambda*pi*R^2);
        r_intf = R.*sqrt(rand(1,no_intf));
        theta = 2*pi.*rand(1,no_intf);
        x_intf = r_intf.*cos(theta);
        y_intf = r_intf.*sin(theta);
        fading_intf = exprnd(1,[1,no_intf]);
        interference = fading_intf.*r_intf.^(-alfa);
        fading = exprnd(1,[1,1]);
        P_desired = fading.*sqrt((xTx-xRx).^2+(yTx-yRx).^2).^(-alfa);
        SINR(i) = P_desired / (sum(interference) + noise);
    end

    SINR_dB = 10*log(SINR);
    s = 0;
    for j = 1:no_realization
        if SINR_dB(j) <= threshold
             s = s+1; 
        end 
    end
        p = s/length(SINR_dB)
    
end

