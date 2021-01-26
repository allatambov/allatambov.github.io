############## LECTURE 3 ##############
##### LISTS #####

L <- list(c(1, 2, 3, 4), c(5, 6, 7))
L

grades <- list(c("Ann", "Sam", "Tom"), c(8, 7, 5))
grades

mtcars
dat <- list("mtcars", "from R", mtcars)
dat

grades <- list(names = c("Ann", "Sam", "Tom"), marks = c(8, 7, 5))
grades

L[[1]]
L[1]

class(L[[1]])
class(L[1])

grades$names
grades$marks

str(grades)
str(L)

model <- lm(data = mtcars, hp ~ cyl)
model
str(model)

L[[1]][2]
grades$names[3]

L[[3]] <- c(0, 9)
L

L[[2]][1] <- 50
L

small <- list(c("a", "b", "c"))
small

unlist(small)
unlist(L)
unlist(dat)
