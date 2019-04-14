try:
    num1 = int(input('num1='))
    num2 = int(input('num2='))
    print('num1 / num2',num1 / num2)
except ValueError:
    print('整数に変換できません。')
except:
    print('例外が発生しました。')