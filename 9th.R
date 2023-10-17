n = as.integer(readline("Enter a number"))
for(i in 1:n)
{
  if(n%%i == 0)
    print(i)
}