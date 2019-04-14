class MyClass:
    @classmethod
    def add(cls, x, y):
        return x + y

    @classmethod
    def show_add_result(cls, x, y):
        print(cls.add(x,y))

MyClass.show_add_result(10, 7)