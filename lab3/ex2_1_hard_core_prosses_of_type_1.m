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
x_node1 = 1./zeros(1,no_node);
y_node1 = 1./zeros(1,no_node);
x_node2 = 1./zeros(1,no_node);
y_node2 = 1./zeros(1,no_node);

for i = 1:no_node
   for j = i+1:no_node
      if  norm([x_node(i),y_node(i)]-[x_node(j),y_node(j)]) <= distance
          flag(j) = 1;
      end
   end
end

for i = 1:no_node
     if flag(i) == 0
        x_node1(i) = x_node(i);
        y_node1(i) = y_node(i);
     else
        x_node2(i) = x_node(i);
        y_node2(i) = y_node(i);
     end
end

figure(1);
plot(x_node,y_node,'b.');
title('Possion point process [3120210726]');
xlabel('Distance');
ylabel('Distance');

figure(2);
plot(x_node1,y_node1,'b.');
hold on;
plot(x_node2,y_node2,'r.');
title('Flag [3120210726]');
xlabel('Distance');
ylabel('Distance');

figure(3);
plot(x_node1,y_node1,'b.');
title('Hard-core process of type 1 [3120210726]');
xlabel('Distance');
ylabel('Distance');
