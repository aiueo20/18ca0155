def foo(*args,label='NO_LABEL'):
    print('args=',args,',label=',label)

foo()
foo(10)
foo(10,20)
foo(label='numbers')
foo(10,label='numbers')
foo(10,20,label='numbers')