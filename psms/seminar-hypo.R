# probabilities t-distribution
pt(0, df = 10)
pt(2, df = 10)
1 - pt(0, df = 10)

pt(1.11, df = 10)
(1 - pt(1.11, df = 10)) * 2

# load data
chipdale <- read.csv("https://allatambov.github.io/psms/chip-n-dale.csv")
chipdale <- na.omit(chipdale)

# descriptive statistics
summary(chipdale)

# hypothesis about proportion
prop.test(24, 66, p = 0.25) # H0: p = 0.25
prop.test(24, 66, p = 0.25, alternative = "greater") # H1: p > 0.25

# hypothesis about mean
t.test(chipdale$cheeze, mu = 70) # H0: mu = 70

# hypothesis about two means
t.test(chipdale$tech ~ chipdale$spec) #H0: mu_pa = mu_pg

