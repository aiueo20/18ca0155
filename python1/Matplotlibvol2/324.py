import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

np.random.seed(7)
x = np.random.normal(loc=20,scale=10,size=1000)

h = ax.hist(x,bins=30,label='Sample',rwidth=0.8,color='red')

ax.legend()
ax.grid()
ax.set_xlabel('x')
ax.set_ylabel('y')

plt.show()