original = {'apple':80,'melon':800,'lemon':65}
fruits = {name:price for name,price in original.items() if price > 100}
print(fruits)