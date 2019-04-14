# import os
# print(os.getcwd())
# #os.chdir("c://Program Files//Java")
# os.chdir("c:/Program Files/Java")
# print(os.getcwd())

# import os
# os.system('cls')
# os.system('ipconfig')
# os.system('ping 127.0.0.1')
# os.system('dir')

import os
#print(os.listdir())
print(os.listdir('c:/'))

# import os

# print(os.path.pardir)
# print(os.listdir('..'))

# import os
# print(os.path.exists('sample.txt'))
# print(os.path.exists('2_2_1_2b.py'))

#プチ演習１
# import os
# fname = '2_2_1_1.py'#ここにファイル名を入力する
# #上に入力したファイルがカレントディレクトリにあれば
# #〇〇（ファイル名）は△△（カレントディレクトリ名）に、存在しますと表示
# #無ければ
# #〇〇（ファイル名）は△△（カレントディレクトリ名）に、存在しませんと表示
# if os.path.exists(fname) :#ファイル操作前のチェックに利用
#     print(fname + "は" + os.getcwd() + "に存在します")
# else:
#     print(fname + "は" + os.getcwd() + "に存在しません")

# import os
# print(os.path.isdir('2_2_1_2b.py'))
# print(os.path.isfile('2_2_1_2b.py'))

#プチ演習２
#カレントディレクトリに存在するファイルとディレクトリを別々に一覧表示する
#ディレクトリ一覧：folder00 folder01
#ファイル一覧：Stdilb00.py Stdlib01.py
#以上のような感じ

# import os
# current = os.listdir('../../')
# filelist = []
# folderlist = []
# for c in current:
#     if '.' in c:
#         filelist.append(c)
#     else:
#         folderlist.append(c)

# print('↓ファイル↓')
# for file in filelist:
#     print(file,end= ' ')
# print('')

# print('↓フォルダ↓')
# for folder in folderlist:
#     print(folder,end= ' ')

import shutil
shutil.copyfile('StLib01.py','copied_test.py')

# import shutil
# shutil.move('testdir','test_dir')