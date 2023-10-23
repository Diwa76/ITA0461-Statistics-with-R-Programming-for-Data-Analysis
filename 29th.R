data(iris)

print(dim(iris))

cat("\nStructure of the dataset:\n")
str(iris)

cat("\nSummary statistics:\n")
summary(iris)

cat("\nStandard Deviation of all features:\n")
sapply(iris[, 1:4], sd)

species_summary <- aggregate(iris[, 1:4], by = list(Species = iris$Species), FUN = function(x) c(Mean = mean(x), SD = sd(x)))
print(species_summary)

quantile_sepal_width <- quantile(iris$Sepal.Width)
quantile_sepal_length <- quantile(iris$Sepal.Length)
cat("\nQuantiles of Sepal Width:\n")
print(quantile_sepal_width)
cat("\nQuantiles of Sepal Length:\n")
print(quantile_sepal_length)

iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, quantile_sepal_length)
cat("\niris1 Data Frame with 'Sepal.Length.Cate':\n")
head(iris1)

avg_values <- aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = mean)
cat("\nAverage values by Species and Sepal.Length.Cate:\n")
print(avg_values)

avg_mean_values <- aggregate(iris1[, 1:4], by = list(Species = iris1$Species, Sepal.Length.Cate = iris1$Sepal.Length.Cate), FUN = function(x) mean(mean(x)))
cat("\nAverage mean values by Species and Sepal.Length.Cate:\n")
print(avg_mean_values)

library(dplyr)
pivot_table <- iris1 %>%
  group_by(Species, Sepal.Length.Cate) %>%
  summarise_all(funs(mean))
cat("\nPivot Table based on Species and Sepal.Length.Cate:\n")
print(pivot_table)