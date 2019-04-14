def foo(label,**kwargs):
    print(label,':',kwargs)

d = {'apple':80,'cherry':120,'banna':45}

foo('fruits',**d)