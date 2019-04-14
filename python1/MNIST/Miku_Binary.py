import matplotlib.pyplot as plt
from matplotlib.image import imread
import numpy as np

img =imread('miku.png')

print(img.dtype)
print(img.shape)
print(img[1][1][1])

miku = np.empty(1)
print(type(miku))
s = 0
for x in img:
    s += x    
    for y in x:
        s += y
        for z in y:
            s += 
            np.append(miku,z)

print(miku)