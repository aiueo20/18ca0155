class MyClass:
    x = 10

    def __init__(self, y):
        self.y = y
    def show(self):
        print(self.y,self.x)

MyClass(20).show()