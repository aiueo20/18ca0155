import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

left = ['A','B','C','D','E','F','G','H','I','J']
prog = [80,70,20,85,65,40,100,88,82,88]
db = [32,62,60,72,92,63,64,85,95,45]

plt.bar(left,prog,color='blue',label='prog.')
plt.bar(left,db,color='green',bottom=prog,label='db')

ax.set_yticks(np.arange(0,210,50))

ax.legend()
ax.grid()
ax.set_xlabel('Students')
ax.set_ylabel('Height(cm)')

plt.show()