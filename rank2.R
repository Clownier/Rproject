x = c(1,3,2,4,7,5,6,4)
rank(x)
order(x)


my_rank = function(x = c(2,3,1)){
  temp = sort(x)
  #print(temp)
  res = c(rep(0,length(x)))
  #print(res)
  rank_out = 1
  for(i in x){
    rank_in = 1
    #print("out = ")
    #print(rank_out)
    #print(res)
    times = 0
    for(j in temp){
      if(i == j){
        #print(i)
        #print(j)
        res[rank_out] = res[rank_out]*times
        res[rank_out] = res[rank_out] + rank_in
        #break
        times = times  + 1
        res[rank_out] = res[rank_out]/times
      }
      rank_in = rank_in +1
    }
    rank_out = rank_out +1
  }
  return(res)
}
my_rank2 = function(x = c(2,3,1)){
  temp = sort(x)
  #print(temp)
  res = c(rep(0,length(x)))
  #print(res)
  rank_out = 1
  for(i in x){
    rank_in = 1
    for(j in temp){
      if(!is.nan(j)&&i == j){
        res[rank_out] =  rank_in
        temp[rank_in] = NaN
        temp[rank_in - 1] = j
      }
      rank_in = rank_in +1
    }
    rank_out = rank_out +1
  }
  return(res)
}
my_rank3 = function(x = c(2,3,1)){
  temp = sort(x)
  #print(temp)
  res = c(rep(0,length(x)))
  #print(res)
  rank_out = 1
  for(i in x){
    rank_in = 1
    for(j in temp){
      if(!is.nan(j) && i == j){
        res[rank_out] =  rank_in
        temp[rank_in] = NaN
        break
      }
      rank_in = rank_in +1
    }
    rank_out = rank_out +1
  }
  return(res)
}
x = c(3,1,6,2,4,6,6,4,3,3,3)
print(my_rank(x))
rank(x)
print(my_rank2(x))
rank(x,ties.method = "last")
print(my_rank3(x))
rank(x,ties.method = "first")

