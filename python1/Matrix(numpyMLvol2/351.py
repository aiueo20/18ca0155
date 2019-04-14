import numpy as np

a = np.array([[1,2,3],[4,5,6]])
b = np.array([[7],[8],[9]])

print(a.shape, b.shape)

print(a.dot(b))
