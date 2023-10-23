# Given vector of values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# (i) Compute mean, median, and mode
mean_value <- mean(values)
median_value <- median(values)

# Calculate the mode
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_value <- get_mode(values)

cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")

# (ii) Find the 2nd highest and 3rd lowest values
sorted_values <- sort(unique(values))
second_highest <- sorted_values[length(sorted_values) - 1]
third_lowest <- sorted_values[3]

cat("2nd Highest Value:", second_highest, "\n")
cat("3rd Lowest Value:", third_lowest, "\n")
