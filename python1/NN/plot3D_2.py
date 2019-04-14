import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

def f(x, y):
    return x ** 2 + y ** 2

x = np.linspace(-10, 100, 30)
y = np.linspace(-10, 100, 30)

meshed_x, meshed_y = np.meshgrid(x, y)
z = f(meshed_x, meshed_y)

fig = plt.figure()
ax = Axes3D(fig)
ax.plot_wireframe(meshed_x,meshed_y,z)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
plt.show()