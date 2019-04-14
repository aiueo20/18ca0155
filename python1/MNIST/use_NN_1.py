import numpy as np
import matplotlib.pyplot as plt
from MNIST_NeuralNetwork import MNIST_NeuralNetwork
from load_mnist import load_mnist

train_x, train_y = load_mnist('mnist', kind='train')

test_x,test_y = load_mnist('mnist', kind='t10k')

nn = MNIST_NeuralNetwork(l2=0.1,l1=0.0,epochs=10,eta=0.001,alpha=0.001,decrease_const=0.00001,shuffle=True,minibatches=50,random_state=1)

nn.fit(train_x,train_y,print_progress=True)

fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)
ax.plot(range(len(nn.cost_)),nn.cost_)
ax.set_xlabel('Epoch')
ax.set_ylabel('Loss')
plt.show()