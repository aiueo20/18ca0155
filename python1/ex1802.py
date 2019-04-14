class ManagementSystem:
    subandsco = {}

    def __set_name(self,name):
        self.__name = name

    #sn = student number
    def __set_sn(self,sn):
        self.__sn = sn

    #sac = subject and score
    def __set_sac(self):
        self.__subandsco = self.subandsco

    def __get_name(self):
        return self.__name

    def __get_sn(self):
        return self.__sn

    def __get_sac(self):
        return self.__subandsco

    def __get_avg(self):
        return 

    def show_sn(self):
        return

    name = property(__get_name,__set_name)
    sn = property(__get_sn,__set_sn)
    sac = property(__get_sac,__set_sac)

m = ManagementSystem()
m.name = input("名前を入力してください：")
m.sn = int(input("学籍番号を入力してください："))
n = int(input("教科数を入力してください："))

for subjectcount in range(n):
    subject = input("教科名を入力してください：")
    score = input("得点を入力してください：")
    m.subandsco[subject] = score

print(m.name)
print(m.sn)
print(m.subandsco)
