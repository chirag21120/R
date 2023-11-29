library("pracma")

f<-function(x,y){
  return(2*(2*x+3*y)/5)
}
#i
integral2(f,0,1,0,1)$Q #$Q is used to just get the value and not the error

#ii
f2<-function(y){
  f(1,y)
}
integral(f2,0,1)

#iii
f3<-function(x){
  f(x,0)
}
integral(f3,0,1)

#iv
f4<-function(x,y){
  x*y*f(x,y)
}

integral2(f4,0,1,0,1)

#Q2

f5<-function(x,y){
  return((x+y)/30)
}
#i
mat<-matrix(c(f5(0,0:2),f5(1,0:2),f5(2,0:2),f5(3,0:2)),4,3,byrow = T)
mat

#ii
sum(mat)

#iii
marg_x<-apply(mat, 1, sum)
marg_x
#iv
marg_y<-apply(mat,2,sum)
marg_y
#v
conditional_prob_x0_y1 = mat[1,2]/marg_y[2]
conditional_prob_x0_y1

#vi
x1_values<- c(0,1,2,3)
y1_values<-c(0,1,2)

E_x = sum(x1_values*marg_x)
E_x
E_y = sum(y1_values*marg_y)
E_y
E_xy <- sum(outer(x1_values,y1_values,'*')*mat )
E_xy
Var_x <- sum((x1_values - E_x)^2 * marg_x)
Var_y <- sum((y1_values - E_y)^2 * marg_y)

Cov_xy <- E_xy - E_x * E_y

correlation_coefficient <- Cov_xy / sqrt(Var_x * Var_y)
Var_y
correlation_coefficient
