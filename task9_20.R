#task4
#0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4
rep(0:4,each = 5)
#1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
rep(1:5,5)

#task5
#1 2 3 4 5 2 3 4 5 6 3 4 5 6 7 4 5 6 7 8 5 6 7 8 9
rep(1:5,5)+rep(0:4,each =5)

#task6
P = matrix(c(0.1,0.2,0.3,0.4),nrow = 4,ncol =7,byrow = TRUE)
P = P[,-c(5,6,7)]
#a.
apply(P,1,sum)#row
apply(P,2,sum)#col
#b.
powerOfmatrix = function(P=matrix(c(1,2,3),nrow =4,ncol =4),n=2){
  #print(P)
  if(n == 1)
    return(P)
  else
    return(powerOfmatrix(P%*%P,n-1))
}
powerOfmatrix(P,2)
powerOfmatrix(P,3)
powerOfmatrix(P,5)
powerOfmatrix(P,10)
#c.
