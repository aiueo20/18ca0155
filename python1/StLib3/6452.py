import re
src = input('>')
pattern = re.compile(r'a\d*')
result = pattern.findall(src)
print(result)