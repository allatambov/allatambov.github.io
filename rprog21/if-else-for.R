############## LECTURE 5 ##############
##### IF-ELSE-FOR #####

### IF-ELSE ###

mark <- 2

if (mark >= 5){
  print("Good!")
  print("You are genius!!!")
} else {
  print("Bad!")
}

if (mark >= 5) print("Good") else print("Bad")

grades <- c(5, 7, 3, 4, 10, 8)
grades_bin <- ifelse(grades > 3, 1, 0)
grades_bin

mark <- 12

if (mark < 4) print("Bad") else{
  if (mark >= 4 & mark < 6) print("Not bad")
  if (mark >= 6 & mark < 8) print("Good")
  if (mark >= 8 & mark <= 10) print("Excellent")
  if (mark > 10) print("We are the champions...")
}

if (mark == 8 | mark == 9 | mark == 10) print("Excellent")

### FOR ###

grades 
grades ** 2
log(grades)

for (i in grades){
  print(i)
}

for (i in grades){
  if (i >= 3.5){
    print("Pass")
  }else{
      print("Fail")
    }
}
