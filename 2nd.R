object_details<-list()
object_names<-ls()
for(i in object_names)
{
  object_size<-object.size(get(i))
  object_details[i]<-object_size
}
print(object_details)