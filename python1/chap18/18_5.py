class Person:
    def __init__(self,name,age):
        self.__name = name
        self.__age = age

p = Person('Alice',23)
print(dir(p))