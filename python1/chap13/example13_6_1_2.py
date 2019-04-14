class MyClass:
    def add(self,x,y):
        return x + y

    def show_add(self,x,y):
        print('x + y =',self.add(x,y))

mc = MyClass()  
mc.show_add(10,5)