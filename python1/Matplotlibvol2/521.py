import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

left = ['A','B','C','D','E','F','G','H','I','J']
height = [165,160,175,180,174,170,172,182,158,172]
ax.bar(left,height,label='Sample')

ax.set_yticks(np.arange(0,210,50))

ax.legend()
ax.grid()
ax.set_xlabel('Students')
ax.set_ylabel('Height(cm)')

plt.show()