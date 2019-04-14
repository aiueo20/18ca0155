import numpy as np

def logical_and(x1,x2):
    x = np.array([x1,x2])
    w = np.array([0.5,0.3])
    b = -0.7
    tmp = np.dot(w, x) + b

    if tmp >= 0:
        return 1
    else:
        return 0

if __name__ == '__main__':
    dataset = [(0,0),(1,0),(0,1),(1,1)]

    for t in dataset:
        y = logical_and(t[0],t[1])
        print(str(t) + ' -> ' + str(y))