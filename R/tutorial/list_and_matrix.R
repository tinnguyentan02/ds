
> test <- c('music tracks', 100, 5)
> test
[1] "music tracks" "100"          "5"           
> typeof(test)
[1] "character"
> test <- list('music tracks', 100, 5)
> test
[[1]]
[1] "music tracks"

[[2]]
[1] 100

[[3]]
[1] 5

> is.list(test)
[1] TRUE
> test <- c('music tracks', 100, 5)
> is.list(test)
[1] FALSE
> test <- list('music tracks', 100, 5)
> name(test) <- c('product'. 'count', 'rating')
Error: unexpected symbol in "name(test) <- c('product'."
> name(test) <- c('product, 'count', 'rating')
Error: unexpected symbol in "name(test) <- c('product, 'count"
> name(test) <- c('product', 'count', 'rating')
Error in name(test) <- c("product", "count", "rating") : 
  could not find function "name<-"
> names(test) <- c('product', 'count', 'rating')
> test
$product
[1] "music tracks"

$count
[1] 100

$rating
[1] 5

> prod.category <- list(product="music tracks", count = 100, raing = 5 )
> prod.category
$product
[1] "music tracks"

$count
[1] 100

$raing
[1] 5

> str(prod.category)
List of 3
 $ product: chr "music tracks"
 $ count  : num 100
 $ raing  : num 5
> a <- list(product="music tracks", count = 100, raing = 5 )
> a
$product
[1] "music tracks"

$count
[1] 100

$raing
[1] 5

> b <- list(product = 'films'. count = 40, rating = 4)
Error: unexpected symbol in "b <- list(product = 'films'."
> b <- list(product = 'films', count = 40, rating = 4)
> 
> a += b
Error: unexpected '=' in "a +="
> a <- list(similar - b)
Error: object 'similar' not found
> a <- list(similar = b)
> a
$similar
$similar$product
[1] "films"

$similar$count
[1] 40

$similar$rating
[1] 4


> a <- list(product="music tracks", count = 100, raing = 5 , similar = b)
> a
$product
[1] "music tracks"

$count
[1] 100

$raing
[1] 5

$similar
$similar$product
[1] "films"

$similar$count
[1] 40

$similar$rating
[1] 4


> a[[1]]
[1] "music tracks"
> a[[2]]
[1] 100
> a[[4 ]]
$product
[1] "films"

$count
[1] 40

$rating
[1] 4

> a[['product']]
[1] "music tracks"
> a[['similar']]
$product
[1] "films"

$count
[1] 40

$rating
[1] 4

> a[c(TRUE)]
$product
[1] "music tracks"

$count
[1] 100

$raing
[1] 5

$similar
$similar$product
[1] "films"

$similar$count
[1] 40

$similar$rating
[1] 4


> a[c(TRUE, FALSE)]
$product
[1] "music tracks"

$raing
[1] 5

> a[c(TRUE, FALSE, TRUE, TRUE)]
$product
[1] "music tracks"

$raing
[1] 5

$similar
$similar$product
[1] "films"

$similar$count
[1] 40

$similar$rating
[1] 4


> a$product
[1] "music tracks"
> a$count
[1] 100
> 
> 
> 
> 
> matrix(1:6, nrow = 3)
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6
> a(1:11, nrow = 2)
Error in a(1:11, nrow = 2) : could not find function "a"
> matrix(1:6, nrow = 3)
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6
> matrix(1:8, nrow = 3)
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    1
Warning message:
In matrix(1:8, nrow = 3) :
  data length [8] is not a sub-multiple or multiple of the number of rows [3]
> matrix(1:8, nrow = 4)
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
> matrix(1:8, ncol = 4)
     [,1] [,2] [,3] [,4]
[1,]    1    3    5    7
[2,]    2    4    6    8
> matrix(1:8, ncol = 4, byrow = TRUE)
     [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
> matrix(1:3, nrow = 2, ncol = 4)
     [,1] [,2] [,3] [,4]
[1,]    1    3    2    1
[2,]    2    1    3    2
Warning message:
In matrix(1:3, nrow = 2, ncol = 4) :
  data length [3] is not a sub-multiple or multiple of the number of rows [2]
> matrix(1:3, nrow = 2, ncol = 3)
     [,1] [,2] [,3]
[1,]    1    3    2
[2,]    2    1    3
> matrix(1:3, nrow = 2, ncol = 3, byrow = TRUE)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    1    2    3
> n <- matrix(1:3, nrow = 2, ncol = 3, byrow = TRUE)
> n
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    1    2    3
> nbind(n, 7:9)
Error in nbind(n, 7:9) : could not find function "nbind"
> rbind(n, 7:9)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    1    2    3
[3,]    7    8    9
> rbin(n, 7:12)
Error in rbin(n, 7:12) : could not find function "rbin"
> rbind(n, 7:12)
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    1    2    3
[3,]    7    8    9
Warning message:
In rbind(n, 7:12) :
  number of columns of result is not a multiple of vector length (arg 2)
> n
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    1    2    3
> rbind(n,c(10,11))
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    1    2    3
[3,]   10   11   10
Warning message:
In rbind(n, c(10, 11)) :
  number of columns of result is not a multiple of vector length (arg 2)
> 
> cbind(n, c(10,11))
     [,1] [,2] [,3] [,4]
[1,]    1    2    3   10
[2,]    1    2    3   11
> n <- matrix(1:3, nrow = 2, ncol = 3, byrow = TRUE)
> rownames(n) <- c('row1')
Error in dimnames(x) <- dn : 
  length of 'dimnames' [1] not equal to array extent
> rownames(n) <- c('row1', 'row2', 'row3')
Error in dimnames(x) <- dn : 
  length of 'dimnames' [1] not equal to array extent
> rownames(n) <- c('row1', 'row2')
> colnames(b) <- c('col1', 'col2', 'col3')
Error in `colnames<-`(`*tmp*`, value = c("col1", "col2", "col3")) : 
  attempt to set 'colnames' on an object with less than two dimensions
> colnames(n) <- c('col1', 'col2', 'col3')
> n
     col1 col2 col3
row1    1    2    3
row2    1    2    3
> n <- matrix(1:3, nrow = 2, ncol = 3, byrow = TRUE)
> n
     [,1] [,2] [,3]
[1,]    1    2    3
[2,]    1    2    3
> dimnames = list(c('row1,'row2), c('col1', 'col2', 'col3'))
Error: unexpected symbol in "dimnames = list(c('row1,'row2"
> dimnames(n) = list(c('row1,'row2), c('col1', 'col2', 'col3'))
Error: unexpected symbol in "dimnames(n) = list(c('row1,'row2"
> dimnames = list(c('row1','row2'), c('col1', 'col2', 'col3'))
> dimnames
[[1]]
[1] "row1" "row2"

[[2]]
[1] "col1" "col2" "col3"

> a <- matrix(1:8, nrow = 4, ncol =2)
> b <- matrix(LETTERS[1:6], nrow = 4, nrol = 2)
Error in matrix(LETTERS[1:6], nrow = 4, nrol = 2) : 
  unused argument (nrol = 2)
> b <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
> a
     [,1] [,2]
[1,]    1    5
[2,]    2    6
[3,]    3    7
[4,]    4    8
> b
     [,1] [,2] [,3]
[1,] "A"  "E"  "C" 
[2,] "B"  "F"  "D" 
[3,] "C"  "A"  "E" 
[4,] "D"  "B"  "F" 
> cbind(a,b)
     [,1] [,2] [,3] [,4] [,5]
[1,] "1"  "5"  "A"  "E"  "C" 
[2,] "2"  "6"  "B"  "F"  "D" 
[3,] "3"  "7"  "C"  "A"  "E" 
[4,] "4"  "8"  "D"  "B"  "F"