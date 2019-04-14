import pickle
import numpy as np
import matplotlib.pyplot as plt
from MNIST_NeuralNetwork import MNIST_NeuralNetwork
from load_mnist import load_mnist

with open('MNIST_NeuralNetwork.pickle', mode='rb') as f:
    nn = pickle.load(f)

train_x, train_y = load_mnist('mnist', kind='train')
test_x, test_y = load_mnist('mnist', kind='t10k')

train_y_pred = nn.predict(train_x)
acc = np.sum(train_y == train_y_pred, axis = 0) / train_x.shape[0]
print('Training accuracy: {:.2f}%'.format((acc * 100)))

test_y_pred = nn.predict(test_x)
acc = np.sum(test_y == test_y_pred, axis = 0) / test_x.shape[0]
print('Test accuracy:{:.2f}%'.format((acc * 100)))