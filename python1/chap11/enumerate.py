# s = 'ABC'

# print(enumerate(s))

# print(list(enumerate(s)))

# t = ('A','B','C')

# print(list(enumerate(t)))

# l = [[11,12,13],[21,22,23]]

# print(list(enumerate(l)))

# d = {'apple':80,'orange':45}

# print(d)

# a = {40,20,30}
# print(list(enumerate(a)))

# s = 'ABC'
# print(list(enumerate(s,start=7)))

# s = 'ABC'
# for i, e in enumerate(s):
#     print(i,e)

print(type(range(3)))
print(range(5))
print(range(1,5))
print(range(-4,4,2))
print(list(range(5)))
print(list(range(1,5)))
print(list(range(-4,4,2)))

s = 'ABC'
for i in range(len(s)):
    print(i,s[i])