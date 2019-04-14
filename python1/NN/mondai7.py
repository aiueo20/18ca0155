import numpy as np
import matplotlib.pyplot as plt

def activate(x):
    c = np.max(x)
    exp_x = np.exp(x - c)
    sum_exp_x = np.sum(exp_x)
    return exp_x / sum_exp_x

x = np.array([0.05, 0.01, 0.04, 0.1, 0.02, 0.05, 0.2, 0.03, 0.4, 0.1])
y = activate(x)

print(x)
print(y)
print(np.sum(y))