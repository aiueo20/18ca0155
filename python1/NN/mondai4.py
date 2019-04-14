import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
def sigmoid(x):
    return 1 / (1 + np.e ** -x)

x = np.linspace(-5, 5, 100)
line, = ax.plot(x,sigmoid(x))

ax.grid()
ax.legend()

plt.show()

