import numpy as np

class Perceptron:
    """
    ウェイト・バイアス固定のパーセプトロン

    attributes
    ----------
    w：1d-array-like
        w = [w0, w1, w2]
    """

    def __init__(self):
        """
        ウェイト・バイアスの固定値をセットする
        """

        #ウェイト・バイアスをセット
        #AND
        #w0,w1,w2 = -0.7,0.5,0.3
        #OR
        w0,w1,w2 = -0.2,0.5,0.5

        self.w = np.array([w0,w1,w2])

    def net_input(self, x):
        """
        入力値からアウトプットを返す。

        Parameters
        ----------
        x：1d-array-like

        Returns
        -------
        y：int
            パーセプトロンのアウトプット
        """

        z = np.dot(self.w[1:], x) + self.w[0]
        if z >= 0:
            return 1
        else:
            return 0

if __name__ == '__main__':
    #データ
    data = np.array([[0,0],[1,0],[0,1],[1,1]])

    p = Perceptron()

    for t in data:
        y = p.net_input(t)
        print(str(t) + " -> " + str(y))