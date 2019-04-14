class Person:
    name = 'John'

    @classmethod
    def print_name(cls):
        print(cls.name)

Person.name = 'Paul'
Person.print_name()