class MyClass:
    @staticmethod
    def greet(name):
        return 'Hello, {}!'.format(name)

    @staticmethod
    def show_greet(name):
        print(MyClass.greet(name))

MyClass.show_greet('John')