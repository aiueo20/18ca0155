import re
src = input('>')
pattern = re.compile('abc')
result = pattern.findall(src)
print(result)