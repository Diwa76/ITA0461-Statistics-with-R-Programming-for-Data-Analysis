v1 = c(1:9)
v2 = c(10:18)
mat = array(c(v1,v2),dim = c(3,3,2))
s = mat[, ,2]
s1 = s [ 2, ]
ele = mat[3,3,1]
mat
s
s1
ele
cat("second row of the second matrix: ",s1,"\n")
cat("Element in the 3rd row and 3rd column of the 1st matrix:",ele,"\n")