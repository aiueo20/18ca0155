def foo():
    my_var = 10

    def bar():
        return 20

    print(dir())

    return my_var * bar()

foo()