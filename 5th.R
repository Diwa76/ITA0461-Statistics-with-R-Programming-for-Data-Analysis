a = 0
b = 1
for(i in 0:8)
{
  print(a)
  temp = b
  b = a+b
  a = temp
}