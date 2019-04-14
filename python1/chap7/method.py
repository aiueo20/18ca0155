# fruit = 'apple_banana_cherry'
# print(fruit.count('a'))
# print(fruit.count('na'))
# print(fruit.count('a',1))
# print(fruit.count('a',1,7))

# fruit = 'apple'

# print(fruit.replace('p','x'))
# print(fruit.replace('p','AB'))

# s = 'apple'

# print(s.startswith('a'))
# print(s.startswith('ap'))
# print(s.startswith('a',1,3))
# print(s.startswith('p',1,3))

# s = 'apple'

# print(s.endswith('e'))
# print(s.endswith('le'))
# print(s.endswith('e',1,3))
# print(s.endswith('e',1,3))

# no = '18CA0199'
# new_no = str(int(no[:2])+1) + no[2:].lower()
# print(new_no)

# s = '__init__'

# print(s.strip('_'))
# print(s.strip('x'))
# print(s.strip('_t'))

# s = 'www.jec.ac.jp'
# print(s.strip('w'))
# print(s.strip('wp'))
# print(s.strip('wjp'))
# print(s.strip('wjp.'))

# s = 'snake%&#[@+$'
# print(s.strip('&'))

# s = 'Python,Java,JavaScript,C'

# print(s.split(','))

fruit1 = 'apple,80,2'
fruit2 = 'orange,45,3'
fruit3 = 'banana,30,5'
#文字列,値段,個数

x1 = fruit1.split(',')
x2 = fruit2.split(',')
x3 = fruit3.split(',')

pay1,pay2,pay3 = int(x1[1]) * int(x1[2]),int(x2[1]) * int(x2[2]),int(x3[1]) * int(x3[2])

print(x1[0] + 'を' + x1[2] + '個購入しました、支払金額は' + str(pay1) + 'です')
print(x2[0] + 'を' + x2[2] + '個購入しました、支払金額は' + str(pay2) + 'です')
print(x3[0] + 'を' + x3[2] + '個購入しました、支払金額は' + str(pay3) + 'です')

s = 'Python,Java,JavaScript,C'
print(s.find(','))

x = [10,20]
x.append(30)
print(x)

x.append('Python')
print(x)

x = [10,20]

x.extend([30,40])
print(x)

x = [10,20,30]
x.remove(20)
print(x)

x = ['Python','Java','C']
print(x)

x.pop()

print(x)

x.pop()

print(x)

x.pop()

print(x)

name = 'Tokyo--London--Paris'

name = name.replace('--',',')
print(name)