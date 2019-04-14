x = 10
y = x

print(x,id(x))
print(y,id(y))
print(x is y)

x = []
y = x
print(x,id(x))
print(y,id(y))
print(x is y)

x = 10
y = 10

print(x,id(x))
print(y,id(y))
print(x is y)
print(10,id(10))

x = -6
y = -6
print(x,id(x))
print(y,id(y))
print(x is y)
print(-6,id(-6))

x = []
y = []
print(x,id(x))
print(y,id(y))
print(x is y)

x1 = 'Hello!'
print(type(x1))
x2 = 123
print(type(x2))
x3 = 123.456
print(type(x3))
x4 = True
print(type(x4))
x5 = None
print(type(x5))

y1 = (10,20,30)
print(type(y1))
y2 = [10,20,30]
print(type(y2))
y3 = {100:'apple',200:'banana'}
print(type(y3))
y4 = {1,3,5,7,7}
print(y4,type(y4))