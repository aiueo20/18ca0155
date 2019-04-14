from load_mnist import load_mnist

train_x, train_y = load_mnist('mnist',kind='train')
print(train_x.shape)
print(train_y.shape)

test_x, test_y = load_mnist('mnist', kind='t10k')
print(test_x.shape)
print(test_y.shape)