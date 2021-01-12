############## LECTURE 1 ##############

##### printing output #####

print(5)
print("hello")
print(x)
print("hello", quote = FALSE)

cat("hello")
print(1, 8)
cat(1, 8)

m <- matrix(3, nrow = 2, ncol = 3)
m
print(m)
cat(m)

a <- cat(9)
a

b <- print(9)
b

cat("Hello", "Alla", sep = ",")
name <- "Alla"
age <- 26

##### string formatting #####

sprintf("Hello, %s", name)
cat(sprintf("Hello, %s", name))

sprintf("Age: %i", age)
sprintf("Age: %f", age)
sprintf("Age: %.1f", age)

##### data input #####

name <- readline(prompt = "Enter your name: ")
class(name)

Age <- as.numeric(readline(prompt = "Enter your age: "))
class(Age)

