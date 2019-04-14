import matplotlib.pyplot as plt
import numpy as np

fig = plt.figure()
ax = fig.add_subplot(1,1,1)

x = [56,78,71,92,55,75,57,80,35,50,20,38,45,48,55,75,65,64,56,68,85,64,66,68,40,48,62,72,78,60]

h = ax.hist(x, bins=10, range=(0,100), label='Sample',cumulative=True)

ax.legend()
ax.grid()
ax.set_xlabel('scores')
ax.set_ylabel('frequency')

plt.show()