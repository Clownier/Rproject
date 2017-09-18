set.seed(1)
n = 100

#生成均值为15，方差为16的n个随机数
x1 = rnorm(n,15,16)
#取随机数的最小最大值作为范围生成等差数列，差为0.1，
x = seq(min(x1),max(x1),0.1)
#生成均值为15，方差为16的正态分布的100个数
y = pnorm(x,15,16)
#x做横坐标，y做纵坐标生成线性图
plot(x,y,type = "l",main = "桐的经验分布图")
#ecdf(x1)是生成x1数据的经验分布数据
plot(ecdf(x1),verticals = TRUE,
     do.points = FALSE,add = T,col = "red")

#绘制图例
legend(-40,0.95,c("分布函数","经验分布函数"),
       lty = 1,col = c("black","red"))

