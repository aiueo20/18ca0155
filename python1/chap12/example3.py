def subtract(n1,n2):
    return n1 - n2

print(subtract(12, 3))
print(subtract(12, n2=3))
print(subtract(n1=12,n2=3))
print(subtract(n2=3,n1=12))

#print(subtract(3,n1=12))

def chain(x,y,z):
    print(x,y,z,sep='-')

chain(1,2,3)

chain(1,2,z=3)

chain(1,y=2,z=3)

chain(1,z=3,y=2)

chain(x=1,y=2,z=3)
chain(x=1,z=3,y=2)
chain(y=2,x=1,z=3)
chain(z=3,x=1,y=2)
chain(y=2,z=3,x=1)
chain(z=3,y=2,x=1)