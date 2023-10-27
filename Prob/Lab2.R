m = matrix(1:10, nrow=2, ncol=5)
m

n = matrix(1:10, 2,5, byrow=TRUE)
n

o = matrix(c(1,5,8,9,6),2,5)
o

o[1,2]
o[1,]
o[,1]
o[,c(1,3)] #isse 1st and 3rd column aa jayega
diag(o)

m1 = matrix(c(1,2,4,9),2,2)
m2 = matrix(c(5,3,2,3),2,2)
m1
m2
m1+m2
m1*m2 #element-wise multiplication
m1%*%m2
t(m1)
m1
det(m1)
solve(m1)

m1
m2
rbind(m1,m2)
cbind(m1,m2)

data1 = data.frame(name=c("a","b","c"), roll_no = c(1,2,3))
data2 = data.frame(name=c("aa","bb","cc"), roll_no=c(11,12,13))
data1
data2
dim(data2)
ncol(data2)
nrow(data2)
summary(data1)

#plot
plot(2,3)
c1 = c(1:3)
c2 = 11:13
plot(c1,c2, xlab = "xaxis", ylab= "yaxis", main="Learning to plot", col="red",cex=3)
plot(c1,c2, xlab = "xaxis", ylab= "yaxis", main="Learning to plot2", col=c("red", "yellow","blue"))


#pie chart
x1 = c(1,2,3,4,5)
pie(x1,label = c("a","b","c","d","e","f"))

#bar graph
x1 = c(1,2,3,4,5,6)
x2 = c(4,12,13,14,15,16) 
barplot(x1,x2, col = c("red", "blue"), width=c(2,3,4,5,6,7))

#If statement
a <- 12
b <- 14
if(b>a){
  print("b is greater than a")
}else if(b<a){
  print("a is greater than b")
}else{
  print("Both are equal")
}

p <- 1
q <- 2
r <- 3
if(p<q & q < r){
  print("Hello");
}

if(p<q | q<r){
  print("Hola");
}

#while loop
i <- 1
while(i < 6){
  print(i)
  i <- i+1
  if(i == 4){
    break;
  }
}

#next
j <- 0
while(j <= 6){
  j <- j+1
  if(j == 4){
    next
  }
  print(j)
}

#for loop
for(x in c("kiwi", "banana")){
  print(x)
}

#functions
sum1 <- function(x,y){
  x*y
}
sum1(2,3)

power<-function(x,y){
  return (x^y)
}
power(2,3)

func1 <- function(x){
  func2 <- function(y){
    a <- x+y
    return(a)
  }
   func2(2)
}
func1(5)

a1 = 2+3i
class(a1)
a2 = as.integer(a1)
class(a2)

factorial(5)

#Factorial
num <- as.integer(readline(prompt = "Enter a number"))
factorial = 1
#check no negative or positive
if(num < 0){
  print("Factorial does'nt exist")
}else if(num == 0){
  print("The factorial of 0 is 1")
}else{
  for(i in 1:num){
    factorial = factorial*i
  }
  print(paste("The factorial of",num,"is",factorial))
}









