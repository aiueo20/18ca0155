import re
src = input('>')
pattern = re.compile('abc')
match = pattern.match(src)

print(match)
print(match.start())
print(match.end())