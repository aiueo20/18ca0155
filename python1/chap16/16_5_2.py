class MyClass:
    x = 100

    def __init__(self):
        self.y = 200

    @classmethod
    def bar(cls):
        print('MyClass#bar')

    @staticmethod
    def piyo():
        print('MyClass#piyo')
        print(dir())
    print(dir())