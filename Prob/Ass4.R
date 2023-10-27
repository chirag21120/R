# #Q1
# x <- c(0, 1, 2, 3, 4)
# p_x <- c(0.41, 0.37, 0.16, 0.05, 0.01)
# sum(x*p_x)
# weighted.mean(x,p_x)
# c(x%*%p_x)

# #Q2
# f<-function(t){
#   ans<-t*0.1*exp((-0.1)*t)
#   return(ans)
# }
# integrate(f,0,Inf)$value
# 
# #Q3
# x<- c(0, 1, 2, 3)
# p_x <- c(0.1, 0.2, 0.2, 0.5)
# y<- 12*x+ 2*(3-x) - 18
# sum(y*p_x)
# 
# #Q4
# f1<- function(t){
#   a<- t*0.5*exp(-abs(t))
#   return(a)
# }
# f2<-function(t){
#   a<- t*t*0.5*exp(-abs(t))
#   return(a)
# }
# fMoment<- integrate(f1,1,10)
# fMoment$value
# sMoment<-integrate(f2,1,10)
# sMoment$value
# var <- sMoment$value - fMoment$value*fMoment$value
# var
# 
# #Q5
# prob <- function(y){
#   return((3/4)*(1/4)^((y^0.5)-1))
# }
# x_val<-c(1:5)
# y_val<- x_val^2
# prob_y <- prob(y_val)
# prob_y
# Ey2 <- sum(y_val*prob_y)
# Ey2
# second<- sum(y_val*y_val*prob_y)
# second
# var <- second - Ey2^2
# var