era = function(n){
  if(n<=1){return(null)}
  is_pri = rep(TRUE,n+1)
  is_pri[1] = FALSE
  is_pri[2] = TRUE
  for(i in 2:sqrt(n)){
    if(is_pri[i]){
      for(j in (i*i):(n+1)){
        if(j%%i == 0){
          is_pri[j] = FALSE
        }
      }
    }
  }
  print = which(is_pri)
  return(print)
}
n = 50
prime_num = era(n)
cat("Prime number upto: ",n,"are",prime_num,"\n")