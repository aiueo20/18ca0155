month = int(input("月を入力してください："))

if 3 <= month <= 5:
    print("春")
elif 6 <= month <= 8:
    print("夏")
elif 9 <= month <= 11:
    print("秋")
elif month == 12 or month == 1 or month == 2 :
    print("冬")
else:
    print("そのような月はありません")