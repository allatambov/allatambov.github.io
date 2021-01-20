############## LECTURE 2 ##############
##### VECTORS PART 1 #####

##### basics #####

v <- c(1, 0, 0, 2)
v
class(v)
length(v)

##### statistics #####

sum(v)
prod(v)
mean(v)
median(v)

# 0 0 1 2

?median
w <- c(9, 4, 5, 6, 1, 0, -1, 2, 3)
quantile(w, 0.2)
quantile(w, c(0.25, 0.5, 0.75))
var(w)
sd(w)

min(w)
max(w)
rank(w)
rank(v)

##### sorting #####

sort(w)
sort(w, decreasing = TRUE)

##### numeric vectors #####

x <- c(1, 0, 0, 2)
y <- c(0, 1, 1, 2)
x + y
x * y

x %*% y

result <- c(x, y)
result

##### character vectors #####

name <- c("Ann", "Mike", "Ben")
name
tolower(name)
toupper(name)

##### type conversion #####

mixed <- c(2, "one", 3)

text <- c("2", "3", "5")
as.numeric(text)
as.integer(text)

as.numeric(c("2.3", "5", "6"))
as.numeric(c("2,3", "5", "6"))
as.numeric(gsub(",", ".", c("2,3", "5", "6")))

##### working with elements #####

people <- c("Mary", "Peter", "John")
people

people[1]
people[0]
people[1:2]
people[1, 3]
people[c(1, 3)]
people[c(1:2, 2:3)]

v <- c(1, 8, 9, 2, 3, 0, -1)
v[v > 3]
v > 3
v[v %% 2 == 0]
v[v > 3 & v %% 2 == 0]
v[v > 3 | v %% 2 == 0]

##### indicies #####

which(v > 8)
which(v > 3)
which(v > 10)