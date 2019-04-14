import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

np.random.seed(7)
x = np.random.normal(loc=20,scale=10,size=1000)
y = np.random.normal(loc=0,scale=10,size=1000)

h = ax.hist([x,y],bins=30,label=['Sample1','Sample2'],rwidth=0.8,stacked=False)

ax.legend()
ax.grid()
ax.set_xlabel('x')
ax.set_ylabel('y')

plt.show()