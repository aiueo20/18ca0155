def to_fahrenheit(celsius):
    f = celsius * 1.8 + 32
    return f

def to_celsius(fahrenheit):
    c = (5/9) * (fahrenheit - 32)
    return c

print(to_fahrenheit(10))

print(to_celsius(10))