set.seed(123)
  
random_sample <- sample(LETTERS, 20, replace = TRUE)  
factor_with_levels <- factor(random_sample)
  
sample_levels <- sample(levels(factor_with_levels), 5)
  
cat("Factor with Levels:\n")
print(factor_with_levels)
  
cat("\nExtracted Levels:\n")
print(sample_levels)
