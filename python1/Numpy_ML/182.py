import numpy as np
x = np.array([True,True,False,True])
print(x)
print(x.dtype)

x = x.astype('int64')
print(x)
print(x.dtype)