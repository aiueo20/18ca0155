with open('sample.py','r') as f:
    if '#' in f.read():
        lines = f.readlines()
        x = lines.index('#')
        lines.pop(x)
    print(f.read())