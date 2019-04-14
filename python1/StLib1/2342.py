# import os
# print(os.path.join('c:/Users/ca/python1','AAA','BBB'))

# import os
# print(os.path.join('~'))
# print(os.path.expanduser('~'))
# print(os.path.expanduser('~/python1/StLib1/stdlib'))

# import os
# print(os.path.split('c:/User/ca/python1/StLib1/2342.py'))
# print(os.path.split('c:/User/ca/python1/StLib1'))
# print(os.path.split('c:/User/ca/python1/StLib1/2342.py')[1])#ファイル名のみ

# import os
# print(os.path.splitext('test.py'))
# print(os.path.splitext('../fukuda/mylab/test.py'))
# print(os.path.splitext('mydir'))
# print(os.path.splitext('../fukuda/mylab/mydir'))

# import os
# print(os.getcwd())
# print(os.path.realpath('2342.py'))
# print(os.path.realpath('S.py'))

# os.chdir('..')
# print(os.getcwd())
# print(os.path.realpath('ex0102.py'))

# import os
# print(os.path.getctime('2342.py'))

import os
print(os.listdir())
files_with_realpath = [os.path.realpath(f) for f in os.listdir()]
print(files_with_realpath)