import numpy as np
import matplotlib.pyplot as plt

class Regression:
    def __init__(self):
        self.w = np.array([30, 0])

    def loss(self, w, x, y):
        return 0.5 * np.sum((self.w[1] * x + self.w[0] - y) ** 2)
                              
    def predict(self, x):
        return self.w[1] * x + self.w[0]

    def gradient_descent(self, f, train_x, train_y, eta=0.01, step=50):
        w_history = []
        w_history.append(self.w.copy())

        for i in range(step):
            w0 = self.w[0]
            w1 = self.w[1]
            self.w[0] = w0 - eta * np.sum(w0 + w1 * train_x - train_y)
            self.w[1] = w1 - eta * np.sum((w0 + w1 * train_x - train_y) * train_x)
            w_history.append(self.w.copy())

        return self.w, np.array(w_history)

    def fit(self, train_x,train_y):
        return self.gradient_descent(self.loss, train_x, train_y)

if __name__ == '__main__':
    # loading data
    train_x = np.array([35, 45, 55, 65, 75])
    train_y = np.array([114,124,143,158,166])

    #Y = 65.1 + 1.38 * x

    regression = Regression()
    w, w_history = regression.fit(train_x,train_y)
    print(w_history)
    print(w)

    fig = plt.figure()
    ax = fig.add_subplot(1, 1, 1)
    ax.plot(w_history[:, 0], w_history[:, 1], marker='o', color='blue', linestyle='--')
    ax.plot(65.1, 1.38, marker='o', color='red')
    ax.grid()
    ax.set_xlabel('w0')
    ax.set_ylabel('w1')
    plt.show()
