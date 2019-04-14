import re
src = input('>')
pattern = re.compile('\w\W\d')
result = pattern.findall(src)
print(result)