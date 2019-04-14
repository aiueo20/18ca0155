def multiply_by(num):
    return lambda x:x * num  

two_times = multiply_by(2)
print(two_times(10))