import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

x = np.random.rand(100)
y = np.random.rand(100)
s = ax.scatter(x,y,label='Sample',s = 50,c = 'blue',alpha = 0.5,linewidth='2',edgecolors='red')

ax.legend()
ax.grid()
ax.set_xlabel('x')
ax.set_ylabel('y')

plt.show()
