import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

def f(x_vec):
    return x_vec[0] ** 2 + x_vec[1] ** 2

x = np.linspace(-10, 10, 30)
y = np.linspace(-10, 10, 30)

meshed_x, meshed_y = np.meshgrid(x, y)
x_vec = np.array([meshed_x.flatten(), meshed_y.flatten()])
z = f(x_vec)

fig = plt.figure()
ax = Axes3D(fig)
ax.plot_wireframe(meshed_x, meshed_y, z.reshape(x.size, y.size))

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
plt.show()