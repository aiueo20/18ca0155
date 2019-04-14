class BankSystem:
    def __init__(self,name,tyokingaku):
        self.__name = name
        self.__tyokingaku = tyokingaku

    def __set_name(self,name):
        self.__name = name

    def __set_tyokingaku(self,tyokingaku):
        self.__tyokingaku = tyokingaku

    def __get_name(self):
        return self.__name

    def __get_tyokingaku(self):
        return self.__tyokingaku

    name = property(__get_name,__set_name)
    tyokingaku = property(__get_tyokingaku,__set_tyokingaku)

    def plus_money(self,having_money):
        self.tyokingaku += having_money

    def hikidashi(self,hikidashi_money):
        self.tyokingaku -= hikidashi_money
        if self.tyokingaku < 0:
            raise Exception

    def syoukai(self):
        print(self.tyokingaku)
try:
    b = BankSystem("Murata",0)
    b.name = "Murata"
    b.tyokingaku = 10000
    print(b.name)
    print(b.tyokingaku)
    b.plus_money(5000)
    b.hikidashi(20000)
    b.syoukai()
except(Exception):
    print("残高が足りません")