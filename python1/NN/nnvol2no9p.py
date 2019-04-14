import numpy as np
import matplotlib.pyplot as plt

x = np.array([35, 45, 55, 65, 75])
y = np.array([114, 124, 143, 158, 166])

Y = 65.1 + 1.38 * x

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)

ax.scatter(x, y, label='dataset')
line, = ax.plot(x, Y, color='red', label='model: regression')


ax.legend()
ax.grid()
ax.set_xlabel('Age')
ax.set_ylabel('Blood pressure (mmHg)')

plt.show()