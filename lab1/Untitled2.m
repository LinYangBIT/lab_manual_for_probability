clear

N = 100000;
mean = 10;
sigma = sqrt(2);

y = mean + sigma * randn(1,N);
data = hist(y, 20);
bar(data,1)
x = 1:1:1000;
normdata = normpdf(x, mean, sigma)
plot(x, normdata);