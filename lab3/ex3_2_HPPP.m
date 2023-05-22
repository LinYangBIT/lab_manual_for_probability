clear all;
close all;
clc;

xscale = 10^4;
yscale = 10^4;
p = 0.6;

lambda = 5*10^(-6);
no_node = poissrnd(lambda*xscale*yscale);
weight = rand(1,no_node);
x_node = xscale.*rand(1,no_node);
y_node = yscale.*rand(1,no_node);
sum = 0;

for i=1:no_node
	if weight(i) > p
        x_node(i)=inf;
         y_node(i)=inf;
	else
        sum = sum + 1;
	end
end
desity1 = sum / (xscale * yscale)

figure(1);
plot(x_node,y_node,'b.');
title('Thining HPPP [3120210726]');
xlabel('Distance');
ylabel('Distance');
legend('¦Ë = 0.6*5*10^ (-6)')

lambda = 3*10^(-6);
no_node = poissrnd(lambda*xscale*yscale);
x_node = xscale.*rand(1,no_node);
y_node = yscale.*rand(1,no_node);

figure(2);
plot(x_node,y_node,'b.');
title('HPPP [3120210726]');
xlabel('Distance');
ylabel('Distance');
legend('¦Ë = 5*10^ (-6)')£»
desity2 = no_node / (xscale * yscale)
