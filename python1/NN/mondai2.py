import matplotlib.pyplot as plt
import numpy as np

def activate(x):
    return np.where(x >= 0,1,-1)

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)

x = np.linspace(-5,5,100)
line, = ax.plot(x,activate(x))

ax.grid()
ax.legend()

plt.show()

