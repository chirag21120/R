# Assignment 1

# Q1
c<-c(5,10,15,20,25,30)
max(c)
min(c)

# Q2
fact <- function(n){
  fact <- 1
  if(n==0 | n==1){
    fact <- 1
  }
  else if (n>1){
    while(n>=1){
      fact <- fact*n
      n<-n-1
    }
  }
  if(n<0){
    print("ERROR")
  }
  return(fact)
}
x <- readline(prompt= "Enter a non negative integer:")
x <- as.integer(x)
print(x)
result <- fact(x)
print(result)

# Q3
fib1=0
fib2=1
sum=0
fib <- function(n){
  if(n<0){
    print("entered value is negative.")
  }
  if(n==0){
    print("fib=0")
  }
  else if(n==1){
    print("fib=1")
  }
  else if(n==2){
    print("fib=1")
  }
  else {
    print(0)
    print(1)
    for(i in 3:n){
      sum<-fib1+fib2
      fib1=fib2
      fib2=sum
      print(sum)
    }
    }
  }

x <- readline(prompt= "Enter a non negative integer for n:")
x <- as.integer(x)
fib_seq <- fib(x)
print(fib_seq)

# Q 4
# a<- as.integer(readline(prompt = "enter 1st: "))
# b<- as.integer(readline(prompt = "enter 2nd: "))
# 
# print("1. Add")
# print("2. Subtract")
# print("3. Multiply")
# print("4. Divide")
# print("5. Exit")
# 
# n<- as.integer(readline(prompt = "operation: "))
# 
#   if(n==1){
#     print(a+b)
#   }
#   else if(n==2){
#     print(a-b)
#   }
# #continued
# 

