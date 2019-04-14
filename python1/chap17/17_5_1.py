class NotEvenNumberError(Exception):
    def __init__(self,message):
        self.message = message

try:
    even_num = int(input('even_num='))

    if even_num % 2 != 0:
        raise NotEvenNumberError('偶数ではありません。')

    print('偶数{}が入力されました。'.format(even_num))

except ValueError:
    print('整数に変換できません。')
except ZeroDivisionError:
    print('ゼロ除算できません。')
except NotEvenNumberError as e:
    print(e.message)