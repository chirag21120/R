a<-10
b<-6
plot(a,b)

#vector
a1 = c(1,2,3,4,5)
a1

a<-5
a+3->a
a

5*a->a
a
2*a1
2^2
2**2
max(a1)
min(a1)

#print number from 1 to 10
1:10
#step size 0.5
seq(from=1,to=10,by=0.5)
seq(1,10,0.5)
seq(from=1,to=10,lenght=6)
rep(5,3)
rep(2:5,each=5)
rep(2:0,length.out = 10)

#to know datatypes
class(4.5)
"h1"
class('hii')

a2 = c('a','b','c','d')
a2
b1 = c(TRUE,FALSE,TRUE)
b1
class(b1)
b1 = c(2,'a',TRUE)
b1
b1[1]
b1[c(2,3)]
b1 = c(2,5,7,8,9)
b1>2
b1[b1>6]
a1 = b1[-3]
a1
b1<=2
b1!=5
#a&b
b1>5&b1<5
b1<5|b1>5

c = c(5,10,15,20,25,30)
min(c)
max(c)
b1 ==5
max(b1)
paste("The maximum of b1 is",max(b1))

print(c)
print(paste("The maximum of c is",max(c)))
print(paste("The maximum of c is",min(c)))

#Matrices

xx = matrix(c(1,2,3,4,7,8,9,8,6),nrow=3,ncol=3)

matrix(c(1,2,3),nrow=3,ncol=4)

yy =matrix(c(1,2,3,4,7,8,9,8,6),nrow=3,ncol=3,byrow = TRUE)

xx+yy
xx-yy
xx*yy
#Matrix Multiplication
b11 =xx%*%yy
b11[1,2]
#Whole col
b11[,2]
#whole row
b11[1,]
#first two col
b11[,c(1,2)]

b11[,c(1,3)]

#transpose
t(b11)
b11
diag(b11)
b22 = matrix(c(1,5,9,7),2,2)
det(b22)
#inverse
b33 =solve(b22)
t(b22)
b22
b33
#concat two matrix rowwise
rbind(b22,b33)
rbind(b22,c(1,2))

cbind(b22,b33)

a11 = matrix(1:10,2,5)
a11
a12 = matrix(1:10,2,5,byrow = TRUE)
a12

data1 = data.frame(name=c("a","b","c"),roll_no= c(1,2,3))
data1
data2 = data.frame(name=c("aa","ba","ca"),roll_no= c(11,12,13))
data2
rbind(data1,data2)
cbind(data1,data2)
dim(data1)
ncol(data1)
nrow(data2)
summary(data1)

#plot
plot(2,3)
c1 = c(1:10)
c2 = 11:20 #we can use c or not
plot(c1,c2,xlab = "x axis",ylab = "y axis", main = "learning how to plot", col= c("red","yellow","green"),type = 'b')
line1 = c(1,2,3,4,5,60)
line2 = c(2,5,7,8,9,10)
plot(line1, type = 'l',col="blue")
lines(line2,type = 'l',col="red")

#pie chart
x1 = c(1:6)
pie(x1,label =c("a","b","c","d","e","f") ,col = c("red","blue","yellow","red","blue","yellow"))

#bar graph
x1 = 1:6
x2 = c(4,12,13,14,15,16)
barplot(x1,x2,col = c("red","blue","yellow"),width = c(2,3,4,5,6,7))
barplot(x1,x2,col = c("red","blue","yellow"),horiz = TRUE)

#if statement
a=33
b = 40
if(b>a){
  print("b is greater than a")
}else if(b<a){
  print("b is less than a")
}else{
  print("b and a are equal")
}
c = 42
if(a<b & b<c){
  print("c is greatest")
}

#while loop
i =1 
while(i<6){
  print(i)
  i = i+1
}

#break
i<-1
while(1<6){
  print(i)
  i = i+1
  if(i==4){
    break
  }
}

#next
i<-1
while(i<=10){
  i<-i+1
  if(i==5){
    next
  }
  print(i)
}

#for loop
for(x in 1:10){
  print(x)
}

for(x in c("kiwi","banana")){
  print(x)
}

sum1<-function(x,y){
  x+y
}
sum1(2,3)
power<-function(x,y){
  return(x^y)
}
power(2,3)

fun1<-function(x){
  fun2<-function(y){
    a<-x+y
    return(a)
  }
  return(fun2)
}
fun1(2)
