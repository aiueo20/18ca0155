age = input('年齢：')

if 0 < int(age) < 20:
    print('未成年です。')
elif 20 <= int(age):
    print('成人です。')
else:
    print('負の年齢が代入されています。')