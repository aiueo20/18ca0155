def foo(label,*args,**kwargs):
    print(label)
    print('args=',args)
    print('kwargs=',kwargs)
    print('-'*30)

foo('TEST1')
foo('TEST2','animal')
foo('TEST3',red='bull')
foo('TEST4','cat',red='bull')
foo('TEST5','cat','dog',red='bull',purple='deep')