import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1 , 1 , 1)

x = np.linspace(-100,100,100000)
y = x*(x - 1)*(x + 1)
line, = ax.plot(x,y,label='ex0101')
plt.xlim(-3,3)
plt.ylim(-3,3)
ax.grid()

ax.legend()

plt.show()