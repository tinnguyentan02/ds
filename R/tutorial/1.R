
a <- '12'
b <- '14'
paste0(a,b)

x <- 1:10
x

 num <- 3.7
 num <- 2
 num
 
 c<- 1 + 2i
 typeof(c)
 class(c)
 
 sentence <- "Hello World"
 length(sentence)
 
 print(paste('hello', ' my name is tin', sep =','))
 
 sprintf("%s is %.f", 'Tin', 21)
 
 v1 <- c(1,2,3,4,5)
 v2 <- c(6,7,8)
 v3 <- c(v1, v2)
 v3
 class(v3)
 
 num <- c(1:10, 10.5)
 num 
 class(num)
 
 ltrs = letters[1:10]
 ltrs
 class(ltrs)
 
 # Factor vector
 fac = as.factor(ltrs)
 class(fac)
 fac
 
 numbers <- c(1,2,3,4,5)
 numbers
class(numbers)

a <- c(1, 2, 3)
b <- c('a', 'b', 'c')
c <- c(a, b)
typeof(a)
typeof(b)
typeof(c)

e <- c(1, 1)
e = as.character(e)
class(e)
as.logical(e)
