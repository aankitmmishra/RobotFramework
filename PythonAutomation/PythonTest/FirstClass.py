
class A:
    
    #this is a contructor
    
    def __init__(self,a,b):
        print("This is a constructor")
        c=a+b
        print(c)
    
    def welcome(self):
        print("This is a class function")
        
    def add(self,a,b):
        c=a+b
        print("Sum is =" + str(c))
        
    def mul(self,a,b):
        c= a*b
        return c
        
        
obj=A(54,54)
obj.welcome()
obj.add(25.4, 67.89)
x= obj.mul(3.4, 7.8)
print(x)