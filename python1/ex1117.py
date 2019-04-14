sortlist = [1,3,5,7,9]

x = min(sortlist)
y = max(sortlist)

i = x
while True:
    for i in range(y):
        if i in sortlist:
            pass
        else:
            print(str(i) + "の値がリスト内に存在しない整数です")
    break