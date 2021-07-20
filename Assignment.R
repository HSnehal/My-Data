#Q1.
seq(1,50,by=3)
seq(1,50,by=5)
seq(1,50,by=10)

#Q2.
#different data objects are Vector,List,Matrix,Array,Factor,Data Frame.
#1) Vector

#1)logical vector
a <- c(TRUE, FALSE, TRUE, TRUE) 
a
class(a)
#2) Numeric vector
b <- c(0, 1, 25, 5.3, 4.22, 6, -2, 4, c(7, 8, 9))
b
class(b)

d <- c(1L,4L,7L,6.6,4.55)
d
class(d)

#3) character vector
e <- c(2L, 34, "R",'Basics')
e
class(e)

#4) integer vector
f <- c(2L,5L,7L)
f
class(f)

#5) Complex vector
g <- 5 + 9i
g
class(g)

#2)List
h<-c(2,3,c(1,2,3),"hi",sin)
h
class(h)

i <- list(23, 2.3,c(1,2,3), "hello")
i
class(i)

#3)Matrix
j<-matrix(c(1,2,3),nrow = 3,ncol = 2,byrow = FALSE)
j
class(j)

#4)Array
j <- array(c("This", "is", "R programming"), dim = c(3, 4, 5))
j
class(j)

#5)Factor
k <- c("mango", "Apple", "cherry", "cherry", "mango", "mango")
x <- factor(k)
class(x)
x

#6)Data Frames
l <- data.frame(gender = c("Male", "Female","Female"), height = c(153, 162.9, 170), weight = c(50,78,59), Age = c(30,40,54))
class(l)
l

#Q3.
m<- data.frame(student =c("Snehal","Suraj","Tejashri","Siddhant","Meena"), height = c(152,154.5,156,155,156), weight = c(45,50,60,58,56), marks = c(90,86,89,90,80))
m
m$marks
m$height
m$student
m$student[3]
m[2]
m[[2]][2]

#Add row
newrow<-data.frame(student="nita",height=167,weight=56,marks=89)
m<-rbind(m,newrow)
m
#remove row
df=m[-1,]
df

#Add column
newcol<-c(1,2,3,4,5,6,7)
m<-cbind(m,newcol)
m
#remove column
m<-subset(m,select = -newcol)
m

#Q4.
x<-4
if(x == 0){
  print("Zero")
} else if(x > 0){
  print("Number is positive")
} else print("Number is negative")

#Q5.
a<-5
is.numeric(a)
is.character(a)
is.integer(a)
is.symbol(a)
x<-'$'
if(is.numeric(x)){
  print("numeric")
} else {
  print("special character")
}




#Q6.
#Break: break Statement is used terminates the loop statement and transfers execution pointer to the statement
# Example
v <- c("Hello","loop")
cnt <- 2
repeat  {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}

#Next:Next Statement is useful when we want to skip the current iteration of a loop without terminating it
# Example
v <- LETTERS[1:7]
for ( i in v) {
  
  if (i == "E") {
    next
  }
  print(i)
}

#Q7.
x= c(1,5.6,3,10,3.5,5)
rev(x)

#Q8.
trial <-c('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')
install.packages('modeest')
library(modeest)
mode(trial)

#Q9.
data("iris")
View(iris)

install.packages('dplyr')
library(dplyr)

filter(iris,Species=="setosa")

#Q10.

data("iris")
View(iris)

mutate(iris, Means_of_obs =(Sepal.Length+Sepal.Width+Petal.Length+Petal.Width)/4)

#Q11.

filter(select(iris,Sepal.Length,Sepal.Width),Species == "versicolor")


#Q12.
install.packages("ggplot2")
library(ggplot2)
View(mtcars)

#scatter plot
ggplot(mtcars, aes(x = drat, y = mpg)) + geom_point(aes(color = factor(gear)))
#This scatter plot show relation between drat and mpg field according to gear 
#which shown by different color.
#Each point represents the values of two variables.

#box plot
boxplot(mtcars$hp)
# It is also useful in
#comparing the distribution of data across data sets by drawing boxplots for each of them.
#In this graph the outliers is present at the top.

#histogram
hist(mtcars$mpg,col="yellow")
#A histogram represents the frequencies of values of a variable into ranges.
#It groups the values into continuous ranges.

#line graph
ggplot(mtcars, aes(x=mpg, y=hp, group=1)) + geom_line(color="red")
#A line chart is a graph that connects a series of points by drawing line between them.
#This charts are usually used in identifying the trends in data.

#bar graph
ggplot(mtcars, aes(x = cyl, y = mpg)) + geom_bar(stat = "identity",fill="blue")
#A bar chart represents data in rectangular bars with length of the bar proportional to the 
#value of the variable.
