################################################
# PART 1: PROPORTIONS 
################################################

### LOAD DATA ###

anames <- read.csv("https://allatambov.github.io/twimc/anames_new.csv",
                   stringsAsFactors = TRUE)
View(anames)

### CHOOSE MARCH 2020 AND GIRLS ONLY ###

girls <- anames[anames$Year == 2020 & anames$Month_en == "Mart" & anames$Sex == "female", ]
n1 <- sum(girls$NumberOfPersons)

### CHOOSE MARCH 2020 AND BOYS ONLY ###

boys <- anames[anames$Year == 2020 & anames$Month_en == "Mart" & anames$Sex == "male", ]
n2 <- sum(boys$NumberOfPersons)

### TESTING HYPOTHESES ABOUT ONE PROPORTION ###

# Total number of girls is n1
# 170 girls with name Anna

# H0: p - 0.05, H1: p != 0.05
prop.test(x = 170, n = n1, p = 0.05)

# Total number of boys is n2
# 210 boys with name Alexander
prop.test(x = 210, n = n2, p = 0.05)  

################################################
# PART 2: MEANS
################################################

### LOAD DATA ###

cowles <- read.csv("https://allatambov.github.io/twimc/Cowles.csv")
View(cowles)

### TESTING HYPOTHESES ABOUT ONE MEAN ###

# H0: mu = 15, H1: mu != 15
t.test(cowles$extraversion, mu = 15)

# H0: mu = 15, H1: mu < 15
t.test(cowles$extraversion, mu = 15, alternative = "less")

### TESTING HYPOTHESES ABOUT TWO MEANS ###

# H0: mu1 = mu2, H1: mu1 != mu_2
t.test(cowles$neuroticism ~ cowles$sex)
  