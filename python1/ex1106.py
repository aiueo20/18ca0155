i = int(input('割引券を提示するなら1を入力してください'))
t = False
if i == 1:
    t = True
else:
    t = False

pay = int(input('支払金額を入力してください。'))

if pay >= 1000:
    if t == True:
        pay = int(pay*(0.9))

print('お支払金額は' + str(pay) + '円です。')