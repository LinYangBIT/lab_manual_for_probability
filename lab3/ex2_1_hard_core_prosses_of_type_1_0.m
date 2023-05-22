clear all;
close all;
clc;
 
xscale = 10;
yscale = 10;
lambda = 8;
distance = 1/3;
 
no_node = poissrnd(lambda*xscale*yscale);
flag = zeros(1,no_node);
x_node = xscale.*rand(1,no_node);
y_node = yscale.*rand(1,no_node);
 
figure(1);
plot(x_node,y_node,'.');
title('Possion point process [3120210726]');
xlabel('Distance');
ylabel('Distance');
 
for i = 1:no_node
   for j = i+1:no_node
      if  norm([x_node(i),y_node(i)]-[x_node(j),y_node(j)]) <= distance
          flag(j) = 1;
      end
   end
end
 
for i=1:no_node
    if  flag(i) == 1
        x_node(i)=inf;
        y_node(i)=inf;
    end
end
 
figure(2);
plot(x_node,y_node,'.');
title('Hard-core process of type 1 [3120210726]');
xlabel('Distance');
ylabel('Distance');
