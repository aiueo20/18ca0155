def foo(a, box=[]):
    box.append(a)
    return box
print(foo(2) + foo(5))