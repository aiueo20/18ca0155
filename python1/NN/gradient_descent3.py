import numpy as np
import matplotlib.pyplot as plt

class Regression:
    def __init__(self):
        #平均0,標準偏差1の正規分布からサンプリングし、Wの初期値としてセット（標準正規分布）
        self.w = np.array([np.random.normal(loc=0, scale=1),np.random.normal(loc=0,scale=1)])

    def loss(self, w, x, y):
        return 0.5 * np.sum((self.w[1] * x + self.w[0] - y) ** 2)

    def predict(self, x):
        return self.w[1] * x + self.w[0]

    def gradient_descent(self, f, train_x, train_y, eta=0.01, step=50):
        w_history = []
        w_history.append(self.w.copy())

        self.error = []

        for i in range(step):
            w0 = self.w[0]
            w1 = self.w[1]

            self.error.append(self.loss(np.array([w0,w1]), train_x,train_y))

            self.w[0] = w0 - eta * np.sum(w0 + w1 * train_x - train_y)
            self.w[1] = w1 - eta * np.sum((w0 + w1 * train_x - train_y) * train_x)
            w_history.append(self.w.copy())

        return self.w, np.array(w_history)

    def fit(self, train_x, train_y):
        return self.gradient_descent(self.loss, train_x, train_y)

if __name__ == '__main__':
    # loading data
    train_x = np.array([35,45,55,65,75])
    train_y = np.array([114,124,143,158,166])
    # Y = 65.1 + 1.38 * x

    normalized_train_x = (train_x - train_x.mean()) / train_x.std()
    normalized_train_y = (train_y - train_y.mean()) / train_y.std()

    print(normalized_train_x)
    print(normalized_train_y)

    regression = Regression()
    w, w_history = regression.fit(normalized_train_x, normalized_train_y)
    print(w)
    print(w_history)

    print('exact w : w*0, w*1 = {},{}'.format(65.1,1.38))
    print('estimated w : w*0, w*1 = {}, {}'.format(train_y.mean() + train_y.std() * w[0] - train_y.std() * train_x.mean() * w[1] / train_x.std(), train_y.std() * w[1] / train_x.std()))

    fig = plt.figure()
    ax = fig.add_subplot(1, 1, 1)
    ax.plot(w_history[:, 0],w_history[:, 1], marker='o', color='blue', linestyle='--')
    ax.grid()
    ax.set_xlabel('w0')
    ax.set_ylabel('w1')
    plt.show()