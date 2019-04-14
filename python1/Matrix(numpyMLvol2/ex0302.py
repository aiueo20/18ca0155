import numpy as np
#a = np.array([[1,2,3],[4,5,6]])
#1 2 3
#4 5 6
a = np.array([[1,3],[1,-2]])
b = np.array([2,-1])
inva = np.linalg.inv(a)

print(inva.dot(b))