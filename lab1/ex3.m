clear
clc
n=1000
y=rand(n,1);
x=-log(y);
a = min(x); b = max(x);%鏍锋湰鍊煎煙鍖洪棿璁＄畻 
m = 40; % 鍒嗙粍鍖洪棿 
de = (b-a)/m; % 鍒嗙粍瀹藉害 
[r,xout] = hist(x,[a:de:b]); % 璁＄畻鐩存柟鍥炬暟鎹?
f = r./(n*de);  
bar(xout,f); 
hold on 
h = findobj(gca,'Type','patch'); set(h,'facecolor', [0.6,0.6,0.6],'edgecolor','k');  
x=0:0.01:20;  
AA=exp(-x)
plot(x,AA)
axis([0 10 0 1]); title('频率密度直方图与理论PDF对比（1000点） [3120210726]');
ylabel('PDF')
xlabel('x')
legend('直方图','理论曲线')