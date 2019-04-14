a = int(input('a = '))
b = int(input('b = '))
c = int(input('c = '))

if a & b & c:
    print('3つの値が等しいです。')
elif a & b:
    print('2つの値が等しいです。')
elif a & c:
    print('2つの値が等しいです。')
elif b & c:
    print('2つの値が等しいです。')
else:
    print('3つの値は異なります。')