my_var = 10
print(locals())

#my_var = 20
locals().update({'my_var':20})
print(locals())
print(my_var)