#Complex Data type 
variable_complex<-3+2i
cat(variable_complex,"\n") 
cat("The data type of variable_complex is ",class(variable_complex),"\n\n") 

#Character Data type 
variable_char<- "Learning r programming" 
cat(variable_char,"\n") 
cat("The data type of variable_char is ",class(variable_char),"\n\n") 

#Raw Data type 
variable_raw<- charToRaw("Learning r programming") 
cat(variable_raw,"\n") 
cat("The data type of variable_char is ",class(variable_raw),"\n\n") 

log2(3)
exp(1)
pi
cos(pi)
sqrt(100)


x <- switch(
  2, 
  "first", 
  "second", 
  "third", 
  "fourth" ) 
print(x)
y<-c(1,5,15,20)
seq(10,25,along.with = y)
seq_len(10)

v <- c("Hello Students","while loop")
cnt <- 2

while (cnt < 7) {
  print(v)
  cnt = cnt + 1
}

v <- c("Hello","loop")
count2 <- 2
repeat {
  print(v)
  count2 <- count2+1
  if(count2 > 5) {
    break
  }
}


v <- LETTERS[1:6]
for ( i in v) {
  if (i == "D") {
    next
  }
  print(i)
}

g = function(x,y) (x+2*y)/3
g(1,2)
g(2,1)

val1 = 6  
val2 = 7
val3 = "d"  
result = switch(  
  val3,  
  "a"= cat("Addition =", val1 + val2),  
  "d"= cat("Subtraction =", val1 - val2),  
  "r"= cat("Division = ", val1 / val2),  
  "s"= cat("Multiplication =", val1 * val2),
  "m"= cat("Modulus =", val1 %% val2),
  "p"= cat("Power =", val1 ^ val2)
)  

print(result)  

seq(5.5,8)
seq(-1,-10)
seq.int(from = 1,to= 30, length.out = 10)


#Calling a Function with Default Argument
# Create a function with arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)



matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)

mat1 <- matrix(data = 1:6, nrow = 2, ncol = 3, byrow = TRUE)
rownames(mat1)      #INITIALLY NO ROWNAMES
colnames(mat1)      #INITIALLY NO COLUMN NAMES
rownames(mat1) <- c("Row 1", "Row 2")                   #ASSIGNING ROW NAME
colnames(mat1) <- c("Col 1", "Col 2", "Col 3")          #ASSIGNING COLUMN NAME
mat1[,"Col 2"]


l2 <- list(vec = c(1, 3, 5, 7, 9), mat = matrix(data = c(1, 2, 3), nrow = 3))
l2
names(l2) 

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")

patientdata <- data.frame(patientID, age, diabetes, status)
patientdata  
patientdata[1:2]
patientdata[3]
patientdata$age

table(patientdata$diabetes, patientdata$status)

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

attach(mtcars)
summary(mpg)
plot(mpg, disp)
plot(mpg, wt)
detach(mtcars)

mpg <- c(25, 36, 47)    #MPG IS ALREADY A FIELD IN MTCARS DATASET
attach(mtcars)
plot(mpg, wt)
detach(mtcars)
mpg

with(mtcars, {
  summary(mpg, disp, wt)
  plot(mpg, disp)
  plot(mpg, wt)
})

spl <- split(mtcars, mtcars$cyl)
spl
mtcars

best2 <- lapply(spl, function(x) tail(x[order(x$mpg),], 2))
best2

do.call(rbind,best2)


charvar <- rep(c("n", "c"), each = 3)
f <- factor(charvar)
f
levels(f)


Weekdays <- factor(c("Monday", "Wednesday", "Thursday", "Tuesday", "Friday", "Sunday", "Saturday"))
Weekdays

Weekdays <- factor(Weekdays, levels=c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday","Saturday", "Sunday"), ordered=TRUE)
Weekdays

Weekend <- subset(Weekdays, Weekdays == "Saturday" | Weekdays == "Sunday")
Weekend
Weekend <- droplevels(Weekend)
Weekend

charvar <- rep(c("W", "n", "c"), times=c(17,20,14))
f <- factor(charvar)
levels(f)

vec<- c(3,4,5,6,7,8)
vec2<- c(9,10,11)
vec +vec2
