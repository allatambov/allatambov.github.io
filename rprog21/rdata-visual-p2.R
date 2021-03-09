###### CHECKS FOR NORMALITY ######

### Curves ###
# add = TRUE to add curve
curve(dnorm(x, mean = 2, sd = 1), xlim = c(-10, 10), col = "green" )
curve(dnorm(x, mean = -1, sd = 1), xlim = c(-10, 10), col = "blue", add = TRUE)
curve(dnorm(x, mean = 2, sd = 3), xlim = c(-10, 10), col = "red", add = TRUE)

### Load data ###
cp <- read.csv("https://allatambov.github.io/rprog/data/CPDS.csv", dec = ",")
cp <- cp[cp$year >= 2014, ]

### Visual checks ###

hist(cp$vturn, 
     main = "Histogram of turnout", 
     xlab = "Turnout (in %)",
     col = "yellow")

curve(dnorm(x, mean = mean(cp$vturn), 
            sd = sd(cp$vturn)), 
      col = "blue", add = TRUE)

# max is reached in x = mean 
dnorm(mean(cp$vturn), 
      mean = mean(cp$vturn), 
      sd = sd(cp$vturn))

hist(cp$vturn, 
     main = "Histogram of turnout", 
     xlab = "Turnout (in %)",
     col = "yellow", 
     freq = FALSE)

# lwd - line width, default  lwd=1
curve(dnorm(x, mean = mean(cp$vturn), 
            sd = sd(cp$vturn)), 
      col = "blue", lwd = 2, add = TRUE)

### Formal checks ###

shapiro.test(cp$vturn)

###### ASSOCIATIONS BETWEEN CATEGORICAL VARIABLES ######

### Visual checks ###
table(cp$poco, cp$gov_party)

install.packages("vcd")
library(vcd)

mosaic(data = cp, poco ~ gov_party)
args <- list(poco = c("No", "Yes"), 
             gov_party = c("Hegemony R", "Dominance R/C", 
                           "Balance R/L", "Dominance L", "Hegemony L"))

mosaic(data = cp, poco ~ gov_party, set_labels = args)

# rot_labels = 2 - rotation 90 right
# we can put degrees here, e.g. rot_labels = 45
mosaic(data = cp, poco ~ gov_party, 
       set_labels = args, 
       rot_labels = 2)

# set_varnames — for x and y
mosaic(data = cp, poco ~ gov_party, 
       set_labels = args, 
       rot_labels = 2, 
       set_varnames = c(poco = "", gov_party = ""))

args <- list(poco = c("No", "Yes"), 
             gov_party = abbreviate(c("Hegemony R", "Dominance R/C", "Balance R/L", "Dominance L", "Hegemony L")))

mosaic(data = cp, poco ~ gov_party, 
       set_labels = args, 
       rot_labels = 45, 
       set_varnames = c(poco = "", gov_party = ""))

### Formal checks ###
chisq.test(table(cp$poco, cp$gov_party))
fisher.test(cp$poco, cp$gov_party)

###### ASSOCIATIONS BETWEEN QUANTITATIVE VARIABLES ######

### Scatter plots ###

plot(cp$gov_left1, cp$gov_right1)
?pch

plot(cp$gov_left1, cp$gov_right1, 
     xlab = "Left parties (in %)", 
     ylab = "Right parties (in %)", 
     pch = 16, 
     col = "royalblue")

plot(cp$gov_left1, cp$gov_right1, 
     pch = 21, bg = "royalblue", col = "black", 
     xlab = "Left parties (in %)", 
     ylab = "Right parties (in %)", 
     main = "Percentage of parties in government",
     sub = "Source: CPDS")

plot(cp$gov_left1, cp$gov_right1, 
     pch = 21, bg = "royalblue", col = "black", 
     xlab = "Left parties (in %)", 
     ylab = "Right parties (in %)", 
     main = "Percentage of parties in government",
     sub = "Source: CPDS")
grid(nx = 10, ny = 10)

str(cp$poco) # check poco
cp$poco <- factor(cp$poco)

# every value in poco with one color
colors <- c("royalblue", "red")[cp$poco] 
head(colors, 10) 

plot(cp$gov_left1, cp$gov_right1, 
     pch = 21, bg = colors, col = "black", 
     xlab = "Left parties (in %)", 
     ylab = "Right parties (in %)", 
     main = "Percentage of parties in government",
     sub = "Source: CPDS")
grid(nx = 10, ny = 10)

# choose columns 10-12
pairs(cp[10:12], pch = 21, bg = colors, col = "black")

### Scatter plots matrices ###

install.packages("car")
library(car)

scatterplotMatrix(cp[10:12], pch = 16)
scatterplotMatrix(cp[10:12], regLine = FALSE, smooth = TRUE)
labs <- c("Right", "Center", "Left")

# var.labels - variable names on diagonal
# cex.labels - font size for labels

scatterplotMatrix(cp[10:12], 
                  regLine = FALSE, smooth = TRUE,
                  var.labels = labs, 
                  cex.labels = 1.3, 
                  pch = 16,
                  main = "Correlations of parties' share")

scatterplotMatrix(cp[10:12], regLine = FALSE, smooth = TRUE,
                  var.labels = labs, 
                  cex.labels = 1.3, 
                  pch = 16,
                  main = "Correlations of parties' share",
                  diagonal = list(method = "histogram"))

scatterplotMatrix(cp[10:12], regLine = FALSE, 
                  smooth = list(col.smooth = "red", lty.smooth = 1),
                  var.labels = labs, 
                  cex.labels = 1.3, 
                  pch = 16,
                  main = "Correlations of parties' share",
                  diagonal = list(method = "histogram", 
                                  breaks = 8))

install.packages("gclus")
library(gclus)

coeffs <- abs(cor(cp[10:12])) 
coeffs

colors <- dmat.color(coeffs) 
head(colors)

order <- order.single(coeffs)
order

# gap - distance between plots in the matrix
cpairs(cp[10:12], order, panel.colors = colors, gap = .5,
       main = "Correlations of parties' shares" )

### Correlation coefficients ###

cor(cp$gov_left1, cp$gov_right1)

# use all except NA (complete observations)
cor(cp$gov_left1, cp$gov_right1, use = "complete.obs")

# Spearman
cor(cp$gov_left1, cp$gov_right1, method = "spearman") 

corr <- cor.test(cp$gov_left1, cp$gov_right1)
corr

str(corr)
coeff <- corr$estimate # coefficient
pvalue <- corr$p.value # p-value
coeff; pvalue

### Correlation matrix with significance ###

install.packages("Hmisc")
library(Hmisc)
rcorr(as.matrix(cp[10:12])) 


