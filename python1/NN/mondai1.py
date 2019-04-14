import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)

x = np.linspace(0, 2 * np.pi, 100)
line, = ax.plot(x,x)

ax.grid()
ax.legend()

plt.show()

