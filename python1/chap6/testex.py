print(5 + 2,5 - 2,5 * 2,5 / 2,5 % 2,5**2,5//2,-5//2,-5%2)

print(divmod(-5,2),0.2+0.8,6.0/3)

x = 1
x += 2
print(x)
y = 1
print(x < y,x <= y,x > y,x >= y)

x = -6
y = -6
print(x == y,x is y)

x = 0b00101100
y = 0b00110100
print(x & y,x | y,x ^ y)

x = 0b00101100
print(x << 2)

print(x >> 2)

print(int(False),int(12),int(12.9),int('12'),int('FF',16),float(True),float(False),float(12),float(12.3),float('12'))

print(float("nan"),float('inf'),float('-inf'))

print(float('123.456'),float('7'))

print(abs(-10),abs(-123.456),abs(True),abs(False))

print(pow(2,10),pow(-2,3),pow(2,0.5),pow(2,10,5))

a,b = 5,3
print(a & (b + a) | (b + a) ^ b)