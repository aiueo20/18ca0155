import re
src = input('>')
pattern = re.compile(r'a{2,4}')
result = pattern.findall(src)
print(result)