import re
src = input('>')
pattern = re.compile(r'a{3}')
result = pattern.findall(src)
print(result)