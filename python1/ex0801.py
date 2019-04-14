shopping_cart = {'apple':100,'banana':200,'orange':300}

print(shopping_cart.get('apple') + shopping_cart.get('banana') + shopping_cart.get('orange'))

print(shopping_cart.values())

for i in shopping_cart.values():
    i += i

print('ショッピングカート内の合計金額は' + str(i) + '円です')

pay = sum(shopping_cart.values())

print('ショッピングカート内の合計金額は',pay,'です')