import re
src = input('>')
pattern = re.compile('[a-cA-c]')
result = pattern.findall(src)
print(result)