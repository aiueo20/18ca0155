def foo(*args):
    print(args)

s = 'ABCaaaa'
t = (10,20)
l = [10,20]
d = {'apple':80, 'cherry':120}
a = {10,20}

foo(*s)
foo(*t)
foo(*l)
foo(*d)
foo(*a)