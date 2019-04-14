import numpy as np
import matplotlib.pyplot as plt

def gradient(f, x_vec, h=0.01):

    grad_f = np.zeros_like(x_vec)

    for i, x in enumerate(x_vec):
        grad = np.zeros_like(x)

        tmp = x_vec[i]
        x_vec[i] = tmp + h
        f_x_plus_h = f(x_vec) #f(x+h)

        x_vec[i] = tmp - h
        f_x_minus_h = f(x_vec) #f(x-h)
        grad = (f_x_plus_h - f_x_minus_h) / (2 * h)

        x_vec[i] = tmp
        grad_f[i] = grad

    return grad_f

def f(x_vec):
    return x_vec[0] ** 2 + x_vec[1] ** 2

x = np.arange(-2, 2.5, 0.25)
y = np.arange(-2, 2.5, 0.25)
meshed_x, meshed_y = np.meshgrid(x, y)
x_vec = np.array([meshed_x.flatten(),meshed_y.flatten()]) #(2, 324)

grad_f = gradient(f, x_vec)

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.quiver(x_vec[0], x_vec[1], grad_f[0], grad_f[1], color='blue', angles='xy') #, scale_units='xy, scale=4.5
ax.grid()
ax.set_xlabel('x')
ax.set_ylabel('y')

plt.show()