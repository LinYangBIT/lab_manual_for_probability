clear 
n=1000
GR=10+sqrt(2)*randn(n,1)
x=GR
a = min(x); b = max(x);%样本值域区间计算 
m = 20; % 分组区间 
de = (b-a)/m; % 分组宽度 
[r,xout] = hist(x,[a:de:b]); % 计算直方图数�?
f = r./(n*de); % 计算统计密度 
bar(xout,f); % 作出频率密度直方�?
hold on 
h = findobj(gca,'Type','patch'); set(h,'facecolor', [0.6,0.6,0.6],'edgecolor'); % 修改样式 
x=0:0.01:20; % 计算并画出F分布的理论概率密度函数曲�?
AA=normpdf(x,10,sqrt(2))
plot(x,AA)
legend('ֱ��ͼ','��������')
axis([0 20 0 0.5]); title('Ƶ���ܶ�ֱ��ͼ������PDF�Ա� [3120210726]');
ylabel('Ƶ���ܶ�/PDF')
xlabel('x')