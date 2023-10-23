exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin',
           'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
exam_data
# a. Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame
sd = exam_data[c(3,5),c(1,3)]
sd
# b. Write a R program to add a new column named country in a given data frame
Country<-c("USA","USA","USA","USA","UK","USA","USA","India","USA","USA")
exam_data$Country = Country
print(exam_data)
#c. Write a R program to add new row(s) to an existing data frame
new_exam_data = data.frame(name = c('Robert', 'Sophia'),score = c(10.5, 9), attempts = c(1,3),qualify = c('yes', 'no'),Country = c('Canada','India'))
exam_datas = rbind(exam_data,new_exam_data)
exam_datas
# d. Write a R program to sort a given data frame by name and score
sorted = exam_datas[order(exam_datas$name,exam_datas$score), ]
sorted
# e. Write a R program to save the information of a data frame in a file and display the information of the file.
write.csv(sorted,file = "sorted.csv")