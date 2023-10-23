row = c('r1','r2','r3','r4','r5')
col = c('c1','c2','c3','c4')
x = matrix(1:20,nrow = 5,ncol = 4, byrow = TRUE, dimnames = list(row,col))
row1 = c('r1','r2','r3')
col1 = c('c1','c2','c3')
c = matrix(1:9,nrow = 3,ncol = 3, byrow = TRUE, dimnames = list(row1,col1))
row2 = c('r1','r2')
col2 = c('c1','c2')
v = matrix(1:4,nrow = 2,ncol = 2, byrow = FALSE, dimnames = list(row2,col2))
x
c
v