data("airquality")
if(is.data.frame(airquality)){
  cat("airquality is a data frame\n")
}else{
  cat("Airquality is not a dataframe.\n")
}
ordered = airquality[order(airquality$Temp,airquality$Day), ]
cleaned = ordered[, !(names(ordered) %in% c("Solar.R","Wind"))]
cleaned