# n = int(input("整数を入力してください："))

# count = 0
# beki = 1
# while True:
#     if beki <= n:
#         count += 1
#         beki = 2 ** count
#         print(str(beki) + ' ',end='')                    
#     else:
#         break

n = int(input('n='))
y = 2
count = 1

while True:
    y = 2 ** count
    count += 1
    if n <= y:
        break
    else:
        print(y,end=' ')