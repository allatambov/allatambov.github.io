############## LECTURE 3 ##############
##### FUNCTIONS #####

print(5)
mean(c(8, 9))
round(4.678, digits = 1)

my_mean <- function(x){
  avg <- sum(x) / length(x)
  return(avg)
}

my_mean(c(3, 6, 7))

my_mean <- function(x){
  avg <- sum(x) / length(x)
  avg
}

my_mean(c(3, 6, 7))

my_mean2 <- function(x){
  avg <- sum(x) / length(x)
  cat(avg)
}

my_mean2(c(3, 6, 7))
r2 <- my_mean2(c(3, 6, 7))
r2

my_mean3 <- function(x){
  avg <- sum(x) / length(x)
  print(avg)
}

my_mean3(c(3, 6, 7))
r3 <- my_mean3(c(3, 6, 7))
r3

my_considerate_mean <- function(x){
  avg <- sum(x) / length(x)
  cat("You have to go to sleep!")
  return(avg)
}

r4 <- my_considerate_mean(c(3, 6, 7))
r4

my_power <- function(a, b){
  return(a ** b, b ** a)
}

my_power(2, 5)

my_power <- function(a, b){
  return(c(a ** b, b ** a))
}

my_power(2, 5)

my_power <- function(a, b){
  return(c(result1 = a ** b, result2 = b ** a))
}

my_power(2, 5)
