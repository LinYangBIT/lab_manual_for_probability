clear 
n=1000
GR=10+sqrt(2)*randn(n,1)
x=GR
a = min(x); b = max(x);%����ֵ��������� 
m = 20; % �������� 
de = (b-a)/m; % ������ 
[r,xout] = hist(x,[a:de:b]); % ����ֱ��ͼ���� 
f = r./(n*de); % ����ͳ���ܶ� 
bar(xout,f); % ����Ƶ���ܶ�ֱ��ͼ 
hold on 
h = findobj(gca,'Type','patch'); set(h,'facecolor', [0.6,0.6,0.6],'edgecolor','k'); % �޸���ʽ 
x=0:0.01:20; % ���㲢����F�ֲ������۸����ܶȺ������� 
AA=normpdf(x,10,sqrt(2))
plot(x,AA)
axis([0 20 0 0.5]); title('m=20��Ƶ���ܶ�ֱ��ͼ');