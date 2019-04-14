import re
src = input('>')
pattern = re.compile('\d\dabc')
result = pattern.findall(src)
print(result)