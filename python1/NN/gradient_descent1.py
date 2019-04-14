import numpy as np
import matplotlib.pyplot as plt

def gradient(f, x_vec, h=0.01):
    grad_f = np.zeros_like(x_vec)

    for i, x in enumerate(x_vec):
        grad = np.zeros_like(x)

        tmp = x_vec[i]
        x_vec[i] = tmp + h
        f_x_plus_h = f(x_vec)
        x_vec[i] = tmp - h
        f_X_minus_h = f(x_vec)
        grad = (f_x_plus_h - f_X_minus_h) / (2 * h)

        x_vec[i] = tmp

        grad_f[i] = grad

    return grad_f

def gradient_descent(f, init_x_vec, eta=0.01, step=100):
    x_vec = init_x_vec
    x_vec_history = []

    for i in range(step):
        x_vec_history.append(x_vec.copy())
        x_vec -= eta * gradient(f, x_vec)

    return x_vec, np.array(x_vec_history)

def f(x_vec):
    return x_vec[0] ** 2 + x_vec[1] ** 2

init_x_vec = np.array([1.2,2.1])
sol_x_vec, x_vec_history = gradient_descent(f, init_x_vec, eta=0.02, step=100)

print(sol_x_vec)
print(x_vec_history)

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.plot(x_vec_history[:,0],x_vec_history[:,1],marker='o',color='blue',linestyle='--')
ax.plot(sol_x_vec[0],sol_x_vec[1],marker='o',color='red')
ax.grid()
ax.set_xlabel('x')
ax.set_ylabel('y')

plt.show()
