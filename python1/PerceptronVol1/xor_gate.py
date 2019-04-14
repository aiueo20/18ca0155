from and_gate import logical_and
from or_gate import logical_or
from nand_gate import logical_nand

def logical_xor(x1,x2):
    s1 = logical_nand(x1,x2)
    s2 = logical_or(x1,x2)
    y = logical_and(s1,s2)
    return y

if __name__ == '__main__':
    dataset = [(0,0),(1,0),(0,1),(1,1)]

    for t in dataset:
        y = logical_xor(t[0],t[1])
        print(str(t) + " -> " + str(y))