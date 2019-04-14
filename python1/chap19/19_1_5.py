def foo():
    def show(x):
        print(x)
    return show

s = foo()
s(1000)