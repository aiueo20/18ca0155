# import os
# import sys
# def move(current):
#     print(os.chdir(current))
# def view(current):
#     print(os.listdir(current))
# def saiki(current):
# #カレントディレクトリ以下の中身をすべて表示するメソッド
#     while os.path.isdir(os.getcwd()):
#         view(current)
#         move(current)

# x = sys.argv

# saiki(x[1])

# # import os,sys
# # n = sys.argv

# # for root,dirs,files in os.walk(n[1]):
# #     for file in dirs:
# #         print(file)
# #     for file in files:
# #         print(file)

#--------------------板書↓-----------------------------
import os,sys

def walktree(file):
    if os.path.isdir(file) == True:
        file_with_realpath = os.path.realpath(file)

        for f in os.listdir(file_with_realpath):
            f_with_path = os.path.join(file_with_realpath,f)
            print(f_with_path)

            if os.path.isdir(f_with_path) == True:
                walktree(f_with_path)

    else:
        print(file)
walktree(sys.argv[1])