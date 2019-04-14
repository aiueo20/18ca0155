shopping_cart = {'リンゴ':80,'みかん':35,'バナナ':60,'レモン':55}
i = 0
for v in shopping_cart.values():
    i += v

print('カート内の合計金額は' + str(i) + 'です。')
