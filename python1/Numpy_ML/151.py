import numpy as np

a = np.array([1,2,3])
print(a)
print(a.ndim)
print(a.shape,a.size)

a = np.array([[11,12,13],[21,22,23]])
print(a)
print(a.ndim)
print(a.shape,a.size)

a = np.array([[[11,12],[13,14],[15,16]],[[21,22],[23,24],[25,26]]])
print(a)
print(a.ndim)
print(a.shape,a.size)