weight = int(input('郵便物の重さ(g)を入力してください'))
price = 0
if weight <= 50:
    price = 120
elif weight <= 75:
    price = 140
elif weight <= 100:
    price = 160
elif weight <= 150:
    price = 200
elif weight <= 200:
    price = 240
elif weight <= 250:
    price = 270
elif weight <= 500:
    price = 390
elif weight <= 750:
    price = 580
elif weight <= 1000:
    price = 700
elif weight <= 2000:
    price = 950
elif weight <= 3000:
    price = 1150
elif weight <= 4000:
    price = 1350
else:
    print('お取り扱いできません。')

print('郵便料金は' + str(price) + '円です。')