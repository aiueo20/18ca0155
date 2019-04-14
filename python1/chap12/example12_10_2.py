def foo(param):
    return param * 10

f = foo
print(f(10))

def bar():
    print('Hello')

def foo2(fnc):
    fnc()
foo(bar)