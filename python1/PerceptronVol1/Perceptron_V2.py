import numpy as np

class Perceptron:
    """
    Attributes
    ----------

    w：1d-array-like
        ウェイト・バイアス
    errors：list
        エポック枚の誤分類数
    eta：float(default：0.01)
        学習率(0.0 - 1.0)
    n_iter：int(default：10)
        エポック数
    shuffle：bool(default：True)
        エポック毎のトレーニングデータをシャッフルする
    """

    def __init__(self,eta = 0.01,n_iter = 10, shuffle = True,random_state = None):
        """
        パーセプトロンおよび学習の各種設定をする

        Parameters
        ----------
        eta：float(default：0.01)
            学習率(0.0 - 1.0)
        n_iter：int(default：10)
            エポック数
        shuffle：bool(default：True)
            エポック毎のトレーニングデータをシャッフルする
        random_state：int(default：None)
            ウェイトをシャッフル・初期化するランダム状態をセットする
        """
        self.eta = eta
        self.n_iter = n_iter
        self.shuffle = shuffle
        if random_state:
            np.random.seed(random_state)

    def fit(self,X,y):
        """
        パーセプトロンの学習をする

        Parameters
        ----------
        X：1d-array-like
            訓練データ[num of data, 2]
        y：1d-array-like
            教師ラベル[num of labels]

        Returns
        -------
        self：学習させた自分自身を返す
        """

        self.w = np.zeros(1 + X.shape[1])
        self.errors = []

        for _ in range(self.n_iter):
            if self.shuffle:
                X, y = self._shuffle(X, y) er 
            errors = 0
            for xi, target in zip(X, y):
                update = self.eta * (target - self.predict(xi))
                self.w[1:] += update * xi                                                                                                                                     
                self.w[0] += update
                errors += int(update != 0.0)
                self.errors.append(errors)
            return self
    def _shuffle(self, X, y):
        """訓練データと正解ラベルをセットでシャッフルする

        Parameters
        ----------
        X：1d-array-like
            訓練データ
        y：1d-array-like
            正解ラベル

        Returns
        -------
        (X, y)：シャッフル後の訓練データと正解ラベルのタプル
        """

        r = np.random.permutation(len(y))
        return X[r],y[r]

    def _net_input(self, X):
        """
        入力値に対するパーセプトロンの出力を返す

        Parameters
        ----------
        X：1d-array-like
            インプット

        Returns
        -------
        y：int
            アウトプット(0,1)
        """
        return np.dot(X, self.w[1:]) + self.w[0]

    def predict(self, X):
        """
        学習済みパーセプトロンのアウトプットを得る

        Parameters
        ----------
        X：1d-array-like
            インプット

        Returns
        -------
        y：1d-array-like with output｛０，１｝
            アウトプット
        """

        return np.where(self._net_input(X) >= 0.0,1,0)

if __name__ == '__main__':
    #ANDゲートの訓練データ
    train_x = np.array([[1,1],[1,0],[0,1],[0,0]])
    train_y = np.array([1,0,0,0])

    #ORゲートの訓練データ
    #train_x = np.array([[1,1],[1,0],[0,1],[0,0])
    #train_y = np.array([1,1,1,9])

    p = Perceptron()
    p = p.fit(train_x,train_y)

    for t in train_x:
        print(t, '->',p.predict(t))

    print(p.errors)
