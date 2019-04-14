import re
src = input('>')
pattern = re.compile(r'\d+')
result = pattern.findall(src)
print(result)