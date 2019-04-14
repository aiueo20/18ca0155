import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
def ReLU(x):
    return np.where(x < 0,0,x)

x = np.linspace(-5, 5, 100)
line, = ax.plot(x,ReLU(x))

ax.grid()
ax.legend()

plt.show()

