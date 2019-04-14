import random

one = []
two = []
three = []
four = []
five = []
six = []

def throwingDice():
    global dice
    gen = random.Random()
    dice = gen.randrange(1,7)

for x in range(0,10000):
    throwingDice()
    if dice == 1:
        one.append(1)
    elif dice == 2:
        two.append(2)
    elif dice == 3:
        three.append(3)
    elif dice == 4:
        four.append(4)
    elif dice == 5:
        five.append(5)
    elif dice == 6:
        six.append(6)

print('1の目が出た回数：' + str(len(one)))
print('2の目が出た回数：' + str(len(two)))
print('3の目が出た回数：' + str(len(three)))
print('4の目が出た回数：' + str(len(four)))
print('5の目が出た回数：' + str(len(five)))
print('6の目が出た回数：' + str(len(six)))
print('----------------------------')
print('1の目が出た割合：' + str(len(one) / 10000 * 100) + '%')
print('2の目が出た割合：' + str(len(two) / 10000 * 100) + '%')
print('3の目が出た割合：' + str(len(three) / 10000 * 100) + '%')
print('4の目が出た割合：' + str(len(four) / 10000 * 100) + '%')
print('5の目が出た割合：' + str(len(five) / 10000 * 100) + '%')
print('6の目が出た割合：' + str(len(six) / 10000 * 100) + '%')
