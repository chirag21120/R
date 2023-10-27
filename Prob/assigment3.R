# Q1
n<- 12
p<- 1/6

prob_upto_6 <- pbinom(6,n,p)

prob_upto_9 <- pbinom(9,n,p)

prob_7_to_9 <- prob_upto_9 - prob_upto_6

prob_7_to_9
#other way to do the same
prob_7_to_9 <- diff(pbinom(c(6,9),n,p))
prob_7_to_9


#Q2
mean <- 72
std_dev <- 15.2
pnorm(84,mean,std_dev,F)


#Q3
#part 1
lambda <- 5
prob_no_car <- dpois(0,lambda)
prob_no_car

#part 2
lambda2 <-50
prob_upto_47 <- ppois(47,lambda2)
prob_upto_50 <- ppois(50,lambda2)

prob_48_to_50 <- prob_upto_50 - prob_upto_47
prob_48_to_50



#Q4
defective<- 17
non_defective <- 250-17
sample_size <-5
prob_exactly_3_def <- dhyper(3,defective,non_defective,sample_size)
prob_exactly_3_def

#Q5
#a Binomial DIstibution
#b
n <- 31
p <- 0.447

x <- 0:n
pmf <- dbinom(x,  n,  p)
plot(x, pmf, type = "l", xlab = "Number of students using Wikipedia", ylab = "Probability", main = "Probability Mass Function (PMF)")

#c
cdf <- pbinom(x, size = n, prob = p)

plot(x, cdf, type = "s", lwd = 2, xlab = "Number of students using Wikipedia", ylab = "Cumulative Probability", main = "Cumulative Distribution Function (CDF)")

#d
mean_X <- n * p
var_X <- n * p * (1 - p)
sd_X <- sqrt(var_X)

mean_X
var_X
sd_X