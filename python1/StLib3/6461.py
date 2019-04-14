import re
src = input('>')
pattern = re.compile(r'.*xx')
result = pattern.findall(src)
print(result)