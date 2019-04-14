row = int(input("rowを決めてください"))
col = int(input("colを決めてください"))

for i in range(col):
    if i != -1:
        for j in range(row):
            if j != -1:
                print("*",end='')
                j -= 1
        print('\n')
    i -= 1