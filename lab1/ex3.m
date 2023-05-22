clear
clc
n=1000
y=rand(n,1);
x=-log(y);
a = min(x); b = max(x);%样本值域区间计算 
m = 40; % 分组区间 
de = (b-a)/m; % 分组宽度 
[r,xout] = hist(x,[a:de:b]); % 计算直方图数�?
f = r./(n*de);  
bar(xout,f); 
hold on 
h = findobj(gca,'Type','patch'); set(h,'facecolor', [0.6,0.6,0.6],'edgecolor','k');  
x=0:0.01:20;  
AA=exp(-x)
plot(x,AA)
axis([0 10 0 1]); title('Ƶ���ܶ�ֱ��ͼ������PDF�Աȣ�1000�㣩 [3120210726]');
ylabel('PDF')
xlabel('x')
legend('ֱ��ͼ','��������')