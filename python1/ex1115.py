print('     ',end = '')

for a in range(9):
    print('{:3s}'.format(str(a + 1)) + ' ',end = '')

print('\n')
print('---------------------------------------')

count = 0
for i in range(9,0,-1):
    if i != -1:
        print('{:3s}'.format(str(i)) + '：',end = '')
        count += 1
    for h in range(count):
        print('{:3s}'.format(str(i * (h + 1))) + ' ',end = '')
    print('{:3s}'.format('＊') * (i - 1),end='')
    print('\n')
    i -= 1

#メモ：formatメソッドで揃えられる