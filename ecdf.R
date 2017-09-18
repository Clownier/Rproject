set.seed(1)
n = 100

#���ɾ�ֵΪ15������Ϊ16��n�������
x1 = rnorm(n,15,16)
#ȡ���������С���ֵ��Ϊ��Χ���ɵȲ����У���Ϊ0.1��
x = seq(min(x1),max(x1),0.1)
#���ɾ�ֵΪ15������Ϊ16����̬�ֲ���100����
y = pnorm(x,15,16)
#x�������꣬y����������������ͼ
plot(x,y,type = "l",main = "ͩ�ľ���ֲ�ͼ")
#ecdf(x1)������x1���ݵľ���ֲ�����
plot(ecdf(x1),verticals = TRUE,
     do.points = FALSE,add = T,col = "red")

#����ͼ��
legend(-40,0.95,c("�ֲ�����","����ֲ�����"),
       lty = 1,col = c("black","red"))
