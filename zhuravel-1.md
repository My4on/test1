## Task 1
x1 <- c("a","b","c") ##character
x2 <- c(0.5,0.9) ##numeric
x3 <- 3L ##integer
x4 <- c(1+0i,2+4i) ##complex
x5 <- c(TRUE,FALSE) ##logical
class(x1)
class(x2)
class(x3)
class(x4)
class(x5)

## Task 2
myvector1 <- c(5:75)
myvector2 <- c(3.14,2.71,0.13)
myvector3 <- c(1:100)
as.logical(myvector3)

## Task 3
m1 <- matrix(data={c(0.5,3.9,0L,2L,1.3,131L,2.2,7L,3.5,2.8,4.6,5.1)},nrow=4,ncol=3)
m1

m2 <- c(0.5,3.9,0L,2L,1.3,131L,2.2,7L,3.5,2.8,4.6,5.1)
dim(m2) <- c(4,3)
m2

r1 <- c(0.5,1.3,3.5)
r2 <- c(3.9,131L,2.8)
r3 <- c(0L,2.2,4.6)
r4 <- c(2L,7L,5.1)
rbind(r1,r2,r3)

col1 <- c(0.5,3.9,0L,2L)
col2 <- c(1.3,131L,2.2,7L)
col3 <- c(3.5,2.8,4.6,5.1)
cbind(col1,col2,col3)

## Task 4
mylist <- list(2.5,"b",T,2+5i,4L)
mylist

## Task 5
myfactor <- factor(c("child","baby","baby","adult","child"))
myfactor

## Task 6
navector <- c(1,2,3,4,NA,6,7,NA,9,NA,11)
match(NA,navector)
length(which(is.na(navector)))

## Task 7
mydataframe <- data.frame(v1=c("стать","M","F","M"),v2=c("вік","25","28","30"),v3=c("оцінка",2,3,5))
mydataframe

## Task 8
names(mydataframe) <- c("Var1","Var2","Var3")
mydataframe

