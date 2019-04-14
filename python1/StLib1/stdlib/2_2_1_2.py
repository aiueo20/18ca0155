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

# import os
# #print(os.listdir())
# print(os.listdir('c:/'))

import os
metadata = os.stat('2_2_1_2.py')#
print(metadata)#アトリビュート全般
print(metadata.st_size)#ファイルサイズ
print(metadata.st_mtime)#ファイル更新日