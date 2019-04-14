import re
src = input('>')
pattern = re.compile(r'a?x')
result = pattern.findall(src)
print(result)