def even_odd_vending_machine(even_or_odd):
    count = 1
    x = []
    if even_or_odd % 2 == 0:
        while True:
            if count <= 10:
                x.append(list(range(even_or_odd,even_or_odd + 20,2)))
            break
        return x
    elif even_or_odd % 3 == 0:
        while True:
            if count <= 10:
                x.append(list(range(even_or_odd,even_or_odd + 20,2)))
            break
        return x

