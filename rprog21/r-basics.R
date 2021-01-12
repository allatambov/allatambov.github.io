############## LECTURE 1 ##############

##### calculations #####
5 * 3
5 / 8
7 ** 2
7 ^ 2
sqrt(16)
sqrt(24)
16 ^ (1/4)
round(5.5)
round(5.56, 1)

pi
exp(1)
log(100)
log10(100)
log(100, base = 4)

##### variables #####
age.1 <- 26
age.1 = 26

2 -> x
x <- x + 1

##### variable types #####

# numeric
# integer
# character (string)
# logical (boolean)

x1 <- 9.5
is.numeric(x1)
is.integer(x1)

x2 <- "welcome"
class(x2)
class(x1)
typeof(x2)
typeof(x1)

?class
help(class)

two <- "2"
as.integer(two)
is.integer(two)
q <- as.numeric("abc")

##### numeric variables #####

a <- 25
b <- 15
sum_ab <- a + b

a ^ b
1 / a ^ b

##### text variables #####

group <- "group#1 group#2 group#3"
sub("#", "_", group)
gsub("#", "_", group)

##### logical expressions #####

x <- 2
y <- 10
x < y
x > y
x >= y
x == y
x != y
x & y < 5


x | y < 5 
xor(x < 5, y < 5)

y <- 3
x | y < 5 
xor(x < 5, y < 5)
