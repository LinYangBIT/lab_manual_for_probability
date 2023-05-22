clear all;
close all;
clc;

R1 = 10;
xscale = 100;
yscale = 100;
lambda = 0.002;
no_node = poissrnd(lambda*xscale*yscale);
x_node = xscale.*rand(1,no_node);
y_node = yscale.*rand(1,no_node);

N = floor(normrnd(10,2,1,no_node));
theta1 = 2*pi.*rand(no_node,max(N));
r_node1 = R1.*sqrt(rand(no_node,max(N)));

for i = 1:no_node
    for j = 1:N(i)
        x1(i,j) = x_node(i)+r_node1(i,j).*cos(theta1(j));
        y1(i,j) = y_node(i)+r_node1(i,j).*sin(theta1(j));
    end
end

for i = 1:no_node
    for j = 1:max(N)
         if  x1(i,j) < 0 || x1(i,j) > xscale || ...
                 y1(i,j) < 0 || y1(i,j) > yscale
             x1(i,j) = inf;
             y1(i,j) = inf;
         end
    end
end

plot(x1,y1,'.');
title('Matern cluster process [3120210726]');
xlabel('Distance');
ylabel('Distance');
