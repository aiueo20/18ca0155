import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

x = [3,5,9,7,2]
y = [9,3,8,4,1]

s = ax.scatter(x,y,label='Sample')

ax.legend()
ax.grid()
ax.set_xlabel('x')
ax.set_ylabel('y')

plt.show()