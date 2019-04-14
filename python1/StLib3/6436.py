import re
src = input('>')
pattern = re.compile(r'\w\W\d')
result = pattern.findall(src)
print(result)