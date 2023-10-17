a = 0
b = 1
print(a)
print(b)
for(i in 0:8)
{
  print(a+b)
  temp = b
  b = a+b
  a = temp
}