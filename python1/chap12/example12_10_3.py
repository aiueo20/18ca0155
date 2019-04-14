def foo():
    print('foo')

def bar():
    print('bar')

def create_fnc(num):
    if num == 1:
        return foo
    else:
        return bar

fnc = create_fnc(1)
fnc()
fnc = create_fnc(2)
fnc()