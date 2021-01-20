############## LECTURE 2 ##############
##### MATRICES #####

#   A B C
# A 0 1 1
# B 0 0 0
# C 1 0 0

##### basics #####

M <- matrix(0, nrow = 2, ncol = 3)
M

dim(M)
nrow(M)
ncol(M)

##### joining vectors #####

x <- c(1, 2, 3, 0)
y <- c(4, 5, 6, 0)
z <- c(7, 8, 9, 0)

M_cols <- cbind(x, y, z)
M_cols

M_rows <- rbind(x, y, z)
M_rows

##### columns and rows #####

matrix(1:12, nrow = 3, ncol = 4)
m1 <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
letters 
LETTERS
rownames(m1) <- letters[1:3]
m1  
colnames(m1) <- LETTERS[1:4] 
m1  

##### working with elements #####

m1[1, 2]
m1[1, ]
m1[, 3]
m1[c(1, 2), 1]
m1[c(2, 3), c(2, 3)]

