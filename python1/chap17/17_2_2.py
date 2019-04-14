try:
    num = int(input('num='))
    print('num={}'.format(num))
except ValueError as e:
    print('整数に変換できません。：',e)