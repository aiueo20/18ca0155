class MyClass:
    def add_attr(self):
        self.x = 100

mc1 = MyClass()
mc1.add_attr()
print(mc1.x)

mc2 = MyClass()
print(mc2.x)