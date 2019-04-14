import random,sys

brow = 0
hit = 0

pclist = []

while True:
    for i in range(0,4):
        pclist.append(str(int(random.random() * 10)))
    if len(set(pclist)) < 4:
        pclist.clear()
        pass
    else:
        list(pclist)
        break

strlist = ','.join(pclist)

try:
    x = input("4桁の数を入力してください：")
    playerList = []
    if len(set(list(x))) < 4:
        raise Exception
    elif not(x.isdecimal()):
        raise Exception
except Exception:
    print('入力エラーです')
    sys.exit()

for c in x:
    playerList.append(c)

judge = 0
try:
    if 4 < len(playerList):
        raise Exception
    elif len(playerList) < 4:
        raise Exception
except Exception as e:
    print("4桁を入力してください")
    judge = 1

if judge == 1:
    pass
else:
        for i in range(0,4):
            if pclist[i] == playerList[i]:
                hit += 1

        for i in range(0,4):
            if (-1 != strlist.find(playerList[i])) & (playerList[i] != pclist[i]):
                brow += 1
        print("乱数の回答は" + strlist + "です")
        print(str(hit) + "ヒット")
        print(str(brow) + "ブロー")