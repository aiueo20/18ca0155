class MyClass:
    x = 10

    @classmethod
    def print_x(cls):
        print(cls.x)

MyClass.print_x()