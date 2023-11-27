#1
d<-rt(100,99)
hist(d, main = " t distribution with df =99",xlab = "t values")

#2
n<-100
val<-c(2,10,25)
chi_square<- lapply(val, function(df) rchisq(n,df))
chi_square

#3
x<- seq(-6,6 ,length=100)
df_values <- c(1, 4, 10, 30)
t_density <- sapply(df_values, function(df) dt(x, df))
t_density

plot(x,t_density[,4],type = "l",main = " t-distribution with df=30",xlab = "x",ylab = "density",col="blue")
lines(x,t_density[,1],col="red")
lines(x,t_density[,2],col="green")
lines(x,t_density[,3],col="orange")
legend("topright", legend = c("df = 30", "df = 1", "df = 4", "df = 10"), col = c("blue", "red", "green", "orange"), lty = 1)

#4
#i
qf(0.95,10,20)

#ii
area_interval_1 <- pf(1.5, 10, 20)
area_interval_2 <- 1 - pf(1.5, 10, 20)
cat("(ii) Area under [0, 1.5]:", area_interval_1, "\n")
cat("    Area under [1.5, +∞):", area_interval_2, "\n")

#iii
quantiles <- c(0.25, 0.5, 0.75, 0.999)
quantile_values <- qf(quantiles, 10, 20)
cat(" Quantiles for probabilities:", quantiles, "are", quantile_values, "\n")

#iv
random_values <- rf(1000, 10, 20)
hist(random_values, main = "Random Values from F-distribution with df(10,20)", xlab = "F-values")
