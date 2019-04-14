import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits import mplot3d

def f(x, y):
    return x ** 2 + y ** 2

x = np.linspace(-10, 10, 30)
y = np.linspace(-10, 10, 30)
meshed_x, meshed_y = np.meshgrid(x, y)
z = f(meshed_x,meshed_y)

fig = plt.figure()
ax = plt.axes(projection='3d')
ax.contour3D(meshed_x, meshed_y, z, 100)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
plt.show()