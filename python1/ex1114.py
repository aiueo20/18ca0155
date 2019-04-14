bottom = int(input("bottomを決めてください"))

for i in range(bottom + 1):
    if i != -1:
        print('{:2s}'.format("*") * i)
        i -= 1