data<-read.csv(file.choose())
data
head(data)

nrow(data)
head(data,10)

#c
pop_mean<-mean(data$Wall.Thickness)
hist(data$Wall.Thickness,main = "Wall Thickness histogram" ,xlab = "wal thickness",ylab = "frequency")
#d
abline(v = pop_mean, col = "red")

#2
#a
s<-sample(data$Wall.Thickness,10,replace=T)
mean(s)

n<-9000
val =c()
val1 =c()
val2= c()
for(i in 1:n){
  val[i] = mean(sample(data$Wall.Thickness,10,T)) 
  val1[i] = mean(sample(data$Wall.Thickness,50,T))
  val2[i] =mean(sample(data$Wall.Thickness,500,T))
}

par(mfrow=c(1,3))
hist(val)
abline(v =mean(val),col="red")

hist(val1)
abline(v=mean(val2),col="red")

hist(val2)
abline(v=mean(val2),col="red")
  