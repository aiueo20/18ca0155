#商品名、定価、ディスカウント商品（True）かどうかがわかる商品オブジェクトを作る

class Item:
    def __init__(self,name,price,discount):
        self.name = name
        self.price = price
        self.discount = discount

    def discount_price(self):
        discountAfterPrice = self.price / 2
        return discountAfterPrice 

class Cart:
    items = [Item("旨辛辛辛辛辛坦々うどん",640,True),Item("おろし醤油うどん",380,True),Item("ぶっかけうどん",280,True)]

    def add(self,appendItem):
        self.items.append(appendItem)

    #ディスカウントも加味した支払金額を返す
    def payment(self):
        totalprice = 0
        discountAfterPriceSum = 0
        for i in self.items:
            totalprice += i.price
            discountAfterPriceSum += i.discount_price()
            return "合計金額は" + str(totalprice) + "\n" + "割引後の合計金額は" + str(discountAfterPriceSum)
        
    def view(self):
        for i in self.items:
            print("商品名：" + i.name + " " + "金額：" + str(i.price))
            if i.discount == True:
                print("↑ディスカウント商品↑" + "\n")

    def num_of_items(self):
        return  len(self.items)


ca = Cart()
ca.add(Item("旨辛坦々うどん",640,True))
print(ca.payment())
ca.view()
print("カート内の商品数は" + str(ca.num_of_items()))