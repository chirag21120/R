
#Q1
x <- c(0, 1, 2, 3, 4)
px <- c(0.41, 0.37, 0.16, 0.05, 0.01)

expected_value <- sum(x*px)
expected_value
expected_value <- weighted.mean(x,px)
expected_value
expected_value<- c(x%*%px)
expected_value

#Q2
f<-function(t){
  a<-t*0.1*exp((-0.1)*t)
  return(a)
}

Ex<-integrate(f,0,Inf)
Ex$value

#Q4
f2<- function(t){
  a<- t*0.5*exp(-abs(t))
  return(a)
}
f3<-function(t){
  a<- t*t*0.5*exp(-abs(t))
  return(a)
}
firstMoment<- integrate(f2,1,10)
firstMoment$value
secondMoment<-integrate(f3,1,10)
secondMoment$value
variance<- secondMoment$value - firstMoment$value*firstMoment$value
variance

#Q3
y1<- c(0, 1, 2, 3)
py1 <- c(0.1, 0.2, 0.2, 0.5)
net_revenue <- 12*y1+ 2*(3-y1) - 18
Ey<- sum(net_revenue*py1)
Ey

#Q5
prob<- function(y){
  return((3/4)*(1/4)^((y^0.5)-1))
}
x_val<-c(1,2,3,4,5)
y_val<- x_val^2
prob_y <- prob(y_val)
Ey2 <- sum(y_val*prob_y)
second<- sum(y_val*y_val*prob_y)
var <- second - Ey2^2
var
