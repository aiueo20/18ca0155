class Point:
    def __init__(self,x,y):
        self.x = x
        self.y = y

    def get_coordinate(self):
        return self.x,self.y

po1 = Point(12,15)
po2 = Point(25,45)

print(po1.get_coordinate())

class Line:
    def __init__(self,p1,p2):
        self.p1 = p1
        self.p2 = p2

    def length(self):
        between_length = pow(((self.p1.x - self.p2.x)**2 + (self.p1.y - self.p2.y) ** 2),0.5)
        return between_length

li = Line(po1,po2)
print(li.length())
