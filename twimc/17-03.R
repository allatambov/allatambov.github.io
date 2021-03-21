# Create a sample

x <- c(3, 5, 10, 4, 12, 30, 5, 80)

# Calculate descriptive statistics: 
# mean, median, lower and upper quartile

mean(x)
median(x)
quantile(x, 0.25)
quantile(x, 0.75)

# Interquartile range

quantile(x, 0.75) - quantile(x, 0.25)

# Minimum and maximum

min(x)
max(x)

# Ranks

rank(x)

# Boxplot and histogram

boxplot(x, col = "hotpink", border = "navy")
hist(x, col = "limegreen")



