try:
    even_num = int(input('even_num='))

    if even_num % 2 != 0:
        raise Exception('偶数ではない整数が入力されました。')

    print('偶数{}が入力されました。'.format(even_num))

except ValueError:
    print('整数に変換できません。')
except ZeroDivisionError:
    print('ゼロ除算できません。')
except Exception as e:
    print(e)