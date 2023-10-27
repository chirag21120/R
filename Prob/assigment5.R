#Q1 a
l.b<-0
u.b<-60
p_greater_45 = punif(45,l.b,u.b,lower.tail=F)
p_greater_45
#Q1 b

p_30 = punif(30,l.b,u.b)
p_20 = punif(20,l.b,u.b)
p_20_30 = p_30 - p_20
p_20_30


#Q3 
alpha<-2
beta<-1/3
p_atleast1 = pgamma(1,shape = alpha,scale = beta,lower.tail = F)
p_atleast1

c_value <- qgamma(0.7, shape = alpha, scale = beta)
c_value


#Q2
lambda<-1/2
#a
dexp(3,rate = lambda)

#b
x_values <- seq(0,5,0.5)
pdf_values<- dexp(x_values,rate= lambda)()
plot(x_values,pdf_values,type='l',xlab = 'x',ylab = 'f(x)',main = 'Exponential Probability Distribution')

#c
pexp(3,rate = lambda)

#d
cdf_values<- pexp(x_values,rate= lambda)
plot(x_values,cdf_values,type = 'l',xlab = 'x',ylab = 'f(x)',main='of cumulative exponential probabilities')

#e
data<- rexp(1000,rate = lambda)
plot(density(data))
