import mymodule3
x = 17
y = 2
print(mymodule3.add(x, y))
print(mymodule3.subtract(x, y))

import importlib
importlib.reload(mymodule3)

import mymodule3

print(mymodule3.add(x, y))
print(mymodule3.subtract(x, y))