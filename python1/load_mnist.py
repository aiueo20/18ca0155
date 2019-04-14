import os
import struct
import numpy as np

def load_mnist(path, kind='train'):
    """
    指定されたパスからデータを読み来k無
    """
    #引数に指定したパスを結合
    labels_path = os.path.join(path, '{}-labels-idx1-ubyte'.format(kind))
    images_path = os.path.join(path,'{}-images-idx3-ubyte'.format(kind))

    #ラベル