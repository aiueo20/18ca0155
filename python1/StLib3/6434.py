import re
src = input('>')
pattern = re.compile('\d\D\d\D')
result = pattern.findall(src)
print(result)