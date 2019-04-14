# x = input('入力>')
# print(x,'が入力されました')
# print(type(x))

s = 'Python'

print('I love {}.'.format(s))

print('I love {0}.'.format(s))

print('I love {0}.Hello,{0}!'.format(s))

s1 ='Java'

s2 = 'Python'

print('I love {0} and {1}.'.format(s1,s2))

print('I love {1} and {0}.'.format(s1,s2))

print('I love {} and {}.'.format(s1,'Java'))

print('There is a {thing} in the {place}.'.format(thing='cat',place='park'))