import math
#2点間の距離を調べる,(x2-x1) + (y2-y1)のルート

x1 = (-2,-2)

x2 = (4,-6)

#dist = math.sqrt(pow((x2[0] - x1[0]),2) + pow((x2[1] - x1[1]),2))

dist2 = ((x2[0] - x1[0]) * (x2[0] - x1[0])) + ((x2[1] - x1[1]) * (x2[1] - x1[1]))
dist = pow(dist2,0.5)

print(dist)