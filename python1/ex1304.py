import math
class Location:
    def __init__(self,latitude,longitude):
        self.latitude = latitude
        self.longitude = longitude

    def get_coordinate(self):
        return self.latitude,self.longitude


#ピザの配達システム、locationで、A,Bの緯度を求める
#日本電子専門学校 座標(WGS84)　緯度: 35.698425 経度: 139.698122
#ドミノ・ピザ西新宿店 座標(WGS84)　緯度: 35.689101 経度: 139.687701
#1.404368km

class DeliveryRange:
    deliverable_range = 10

    def __init__(self,center):
        self.center = center
    def is_deliverable(self,ab_dist_result):
        #配達可能な円の半径の距離、r = 10kmなら、r ** 2 * 3.14 =314km
        if self.deliverable_range > ab_dist_result:
            return "配達可能です"
        elif self.deliverable_range <= ab_dist_result:
            return "配達不可能です"
    def getDeliverable_range(self):
        return self.deliverable_range

class Dist:
    def distance(self,A,B):
        distance_km = 6371 * math.acos(
        math.cos(A.latitude/180*math.pi) * math.cos((B.longitude - A.longitude)/180*math.pi) * math.cos(B.latitude/180*math.pi) +
        math.sin(A.latitude/180*math.pi) * math.sin(B.latitude/180*math.pi)) 
        return distance_km

loA = Location(35.698425,139.698122):
loB = Location(35.689101,139.687701)
di = Dist()
ab_dist = di.distance(loA,loB)
de = DeliveryRange("日本電子専門学校")
print("宅配距離：" + str(ab_dist) + "km")
print("宅配可能距離：" + str(de.deliverable_range) + "km")
print(de.is_deliverable(ab_dist))