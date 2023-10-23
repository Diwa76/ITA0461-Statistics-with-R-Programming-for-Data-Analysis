data("women")
factor_w <- cut(women$height, breaks = c(50,60,70,80),labels = c("Short","Medium","Tall"))
print(factor_w)