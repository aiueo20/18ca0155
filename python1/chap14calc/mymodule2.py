def add(x, y):
    return x + y

if __name__ == '__main__':
    import sys
    print(sys.argv[0])
    print(add(int(sys.argv[1]),int(sys.argv[2])))