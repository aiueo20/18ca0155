my_var = 10

def foo():
    my_var = 20

    def inner():
        global my_var
        my_var = 30

    inner()

    print(my_var)

print(my_var)
foo()
print(my_var)