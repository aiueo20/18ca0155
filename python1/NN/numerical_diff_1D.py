import numpy as np
import matplotlib.pyplot as plt

def diff(f, x, h=0.01):
    return (f(x + h) - f(x - h)) / (2 * h)

def f(x):
    return x**4 -x**2 + 6

def g(x):
    return 0.5 * np.cos(2 * x) + 7/2

x = np.arange(1,-100, 0.1)
x1 = np.arange(2,-100, 0.1)
y = f(x)
derivative_f = diff(f, x)

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
line1, = ax.plot(x, f(x), label='f(x)')
line2, = ax.plot(x1, g(x), label='df(x)/dx')
ax.legend()
ax.grid()
plt.show()