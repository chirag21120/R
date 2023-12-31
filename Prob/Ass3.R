# #Q1
# p1 <- pbinom(9,12,1/6) # probab. of 10 or more sixes
# p2 <- pbinom(6,12,1/6) # probab. of 7 or more sixes
# p <- p1-p2
# print(paste("Probability = ",p))

# #Q2
# p<-pnorm(84,72,15.2,lower.tail=F)
# print(paste("Percentage of students scoring 84 and above is ",p))

# #Q3
# p1<-dpois(0,5)
# print(paste("Probability that no car arrives from 10AM to 11AM is ",p1))
# p2<-dpois(48,50)+dpois(49,50)+dpois(50,50)
# print(paste("Probability that 48-50 cars arrive from 8AM to 6PM is ",p2))

# #Q4
# p<-dhyper(3,17,233,5)
# print(paste("P(X=3) =",p))

# #Q5
# n<-31
# p=0.447
# #1 X follows a binomial distribution
# #2
# x_values <- 0:31
# pmf <- dbinom(x_values, n, p)
# barplot(pmf, names.arg = x_values, xlab = "Number of Students Using Wikipedia", ylab = "Probability", main = "Probability Mass Function(PMF) of X")
# #3
# cdf <- pbinom(x_values, size = n, prob = p)
# plot(x_values, cdf, type = "s", xlab = "Number of Students Using Wikipedia", ylab = "Cumulative Probability", main = "Cumulative Distribution Function (CDF) of X")
# #4
# mean_X <- n * p
# mean_X
# variance_X <- n * p * (1 - p)
# variance_X
# std_dev_X <- sqrt(variance_X)
# std_dev_X


