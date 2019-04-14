class Person:
    def __init__(self,name,age):
        self.__name = name
        self.__age = age

    def __get_name(self):
        print('__get_name is called.')
        return self.__name

    def __get_age(self):
        print('__get_age is called.')
        return self.__age

    def __set_age(self, age):
        if age < 0:
            raise Exception("負の年齢です")
        print('__set_age is called.')
        self.__age = age

    name = property(__get_name)
    age = property(__get_age,__set_age)

try:
    p = Person('Alice',-23)
    print(p.name,p.age)
    p.age += 1
    print(p.name,p.age)
except(Exception):
    print("負の数です")