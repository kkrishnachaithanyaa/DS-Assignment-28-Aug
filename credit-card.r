install.packages("ggplot2")

library(ggplot2)

url <- "https://storage.googleapis.com/download.tensorflow.org/data/creditcard.csv"
df <- read.csv(url)

amount_mean <- mean(df$Amount)
amount_median <- median(df$Amount)
amount_variance <- var(df$Amount)

cat("Mean of Amount:", amount_mean, "\n")
cat("Median of Amount:", amount_median, "\n")
cat("Variance of Amount:", amount_variance, "\n")

ggplot(df, aes(x = factor(Class))) +
  geom_bar(fill = c("skyblue", "tomato")) +
  labs(title = "Count of Fraud vs. Non-Fraud Transactions",
       x = "Class (0: Non-Fraud, 1: Fraud)",
       y = "Number of Transactions") +
  theme_minimal()

