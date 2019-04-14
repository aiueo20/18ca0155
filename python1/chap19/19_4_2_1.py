original = {'apple':80,'melon':800,'lemon':65}
fruits = {name:int(price * 1.08) for name,price in original.items()}
print(fruits)