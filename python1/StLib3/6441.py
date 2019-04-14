import re
src = input('>')
pattern = re.compile('[ace]')
result = pattern.findall(src)
print(result)