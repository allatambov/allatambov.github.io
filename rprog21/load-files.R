
# CSV comma separated values

# name,age
# Ann,23

trees <- read.csv("https://allatambov.github.io/rprog/data/firtree.csv")
trees <- read.csv("https://allatambov.github.io/rprog/data/firtree.csv", encoding = "UTF-8")

# if still have problems with text in Russian
# Sys.setlocale("LC_CTYPE", "ru_RU.UTF-8")

tr <- read.csv(file.choose(), encoding = "UTF-8")
tr <- read.csv("/Users/allat/Desktop/firtree.csv", encoding = "UTF-8")

# find current working directory
getwd()

# change working directory and open file in it
setwd("/Users/allat/Desktop")
tr <- read.csv("firtree.csv")

