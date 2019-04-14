s1 = 'ABC'
s2 = 'XYZ'
print(list(zip(s1,s2)))

l1 = [10,20,30]
l2 = [40,50,60]
print(list(zip(l1,l2)))

t1 = ('A','B')
t2 = (10,20)
t3 = (True,False)
print(list(zip(t1,t2,t3)))

d1 = {'apple':80,'cherry':120}
d2 = {'Tokyo':'東京','Kanagawa':'神奈川'}
print(list(zip(d1,d2)))

a = {'P','y'}
b = {50,10}
print(list(zip(a,b)))

l1 = [10,20,30]
l2 = [40,50]
l3 = []

print(list(zip(l1,l2)))
print(list(zip(l1,l3)))

s1 = 'ABC'
s2 = 'XYZ'
for e1,e2 in zip(s1,s2):
    print(e1,e2)