# This is a Python Test

#print("This is a Python Code")


#i = input("Enter a name")

#print("The name entered is " + i)

#readDatata=\
 #   input("Enter the name again --> ")
    
#print(readDatata)


#Reverse the string


a= "ankit"
b=""
l= len(a)

for i in range((l-1), -1,-1):
    
    b=b+a[i]
    
    
    
print (b)

a= "ankitat"

i= "abc"

count={}

for s in a:
  if s in count:
    count[s] += 1
  else:
    count[s] = 1

for key in count:
  if count[key] > 1:
    print  (key , count[key])
    print (count)
    
    
    
    
list1 = [22,28.6,33.33,"Ankit","Test",59,1,30,30]

print(list1[2:5])

print(list1[2:])

list1.insert(0, "ABCD")

print(list1[0])

print(list1.count(30))


def test():
    x=1+3
    return x

