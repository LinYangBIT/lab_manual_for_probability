clear 
n=1000
GR=10+sqrt(2)*randn(n,1)
x=GR
a = min(x); b = max(x);%鏍锋湰鍊煎煙鍖洪棿璁＄畻 
m = 20; % 鍒嗙粍鍖洪棿 
de = (b-a)/m; % 鍒嗙粍瀹藉害 
[r,xout] = hist(x,[a:de:b]); % 璁＄畻鐩存柟鍥炬暟鎹?
f = r./(n*de); % 璁＄畻缁熻瀵嗗害 
bar(xout,f); % 浣滃嚭棰戠巼瀵嗗害鐩存柟鍥?
hold on 
h = findobj(gca,'Type','patch'); set(h,'facecolor', [0.6,0.6,0.6],'edgecolor'); % 淇敼鏍峰紡 
x=0:0.01:20; % 璁＄畻骞剁敾鍑篎鍒嗗竷鐨勭悊璁烘鐜囧瘑搴﹀嚱鏁版洸绾?
AA=normpdf(x,10,sqrt(2))
plot(x,AA)
legend('直方图','理论曲线')
axis([0 20 0 0.5]); title('频率密度直方图与理论PDF对比 [3120210726]');
ylabel('频率密度/PDF')
xlabel('x')