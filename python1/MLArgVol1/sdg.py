import numpy as np
import matplotlib.pyplot as plt

class Regression:
    def __init__(self):
        self.w = np.array([np.random.normal(loc=0, scale=1),np.random.normal(loc=0, scale=1)])

    def loss(self, w, x, y):
        return 0.5 * np.sum((self.w[1] * x + self.w[0] - y) ** 2)

    def predict(self, x):
        return self.w[1] * x + self.w[0]

    def gradient_descent(self, f, train_x, train_y, eta=0.001, step=300):
        w_history = []
        w_history.append(self.w.copy())

        self.costs = []

        for j in range(step):
            w0 = self.w[0]
            w1 = self.w[1]

            for j in range(len(train_x)):
                self.costs.append(self.loss(np.array([w0,w1]),train_x[j],train_y[j]))

                self.w[0] = w0 - eta* np.sum(w0 + w1 * train_x[j] - train_y[j])
                self.w[1] = w1 - eta* np.sum(w0 + w1 * train_x[j] - train_y[j] * train_x[j])
                w_history.append(self.w.copy())

        return self.w, np.array(w_history)

    def fit(self, train_x, train_y, eta=0.001, step=100):
        return self.gradient_descent(self.loss, train_x, train_y, eta, step)

if __name__ == '__main__':
    # loading data
    train_x = np.array([35, 45, 55, 65, 75])
    train_y =  np.array([114, 124, 143, 158, 166])
    # Y = 65.1 + 1.38 * x

    normalized_train_x = (train_x - train_x.mean()) / train_x.std()
    normalized_train_y = (train_y - train_y.mean()) / train_y.std()

    regression = Regression()

    w, w_history = regression.fit(normalized_train_x, normalized_train_y, eta=0.001, step=100)

    print(w_history)
    print('exact w : w*0, w*1 = {},{}'.format(65.1,1.38))
    print('estimated w: w*0, w*1 = {},{}'.format(train_y.mean() + train_y.std() * w[0] -train_y.std() * train_x.mean() * w[1] / train_x.std(), train_y.std() * w[1] / train_x.std()))

    fig = plt.figure()
    ax = fig.add_subplot(1, 1, 1)
    ax.plot(np.arange(0, len(regression.costs)), regression.costs)
    ax.grid()
    ax.set_xlabel('epochs')
    ax.set_ylabel('loss')
    plt.show()