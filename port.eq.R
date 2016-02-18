port.eq <- function(data=ret.mon){
  mean.ret <- apply(data, 2, mean)
  vcov.ret <- cov(data)
  num.stock <- ncol(data)
  e.weight <- (1/num.stock)*rep(1,num.stock)
  ret.equal <- t(mean.ret) %*% e.weight
  var.equal <- t(e.weight) %*% vcov.ret %*% e.weight
  return(list(stock=names(data),weights=e.weight,
    return=ret.equal,risk=var.equal^.5))
}
