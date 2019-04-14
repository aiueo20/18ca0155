import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
def tanh(x):
    return (np.e**x - np.e**-x)/(np.e**x + np.e**-x)

x = np.linspace(-5, 5, 100)
line, = ax.plot(x,tanh(x))

ax.grid()
ax.legend()

plt.show()

