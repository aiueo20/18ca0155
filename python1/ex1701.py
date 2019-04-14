try:
    x = int(input('一つ目の整数を入力してください。'))
    y = int(input('二つ目の整数を入力してください。'))

    print(x + y)
except ValueError:
    print('整数を入力してください。')