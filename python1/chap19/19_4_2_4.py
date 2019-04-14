members = ['Alice','Bob','Victor']
members_set = {name for name in members if len(name) >= 5}
print(members_set)