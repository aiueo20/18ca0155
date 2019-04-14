import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

x = np.random.rand(100)
y = np.random.rand(100)

x2 = np.random.rand(100)
y2 = np.random.rand(100)
s = ax.scatter(x,y, label='Sample',s = 50,c = 'blue', alpha=0.5,linewidths='2',edgecolors='black',marker='^')
b = ax.scatter(x2,y2,label='Sample',s = 50,c = 'blue', alpha=0.5,linewidths='2',edgecolors='blue')
plt.show()