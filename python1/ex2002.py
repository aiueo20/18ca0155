import os
import sys
def move(current):
    print(os.chdir(current))
def view(current):
    print(os.listdir(current))
def saiki(current):
#カレントディレクトリ以下の中身をすべて表示するメソッド
    while os.path.isdir(os.getcwd()):
        view(current)
        move(current)

x = sys.argv

saiki(x[1])

# import os,sys
# n = sys.argv

# for root,dirs,files in os.walk(n[1]):
#     for file in dirs:
#         print(file)
#     for file in files:
#         print(file)