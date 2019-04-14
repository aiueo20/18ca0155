scores = 10,20,30,40,50,60,70,80,90,100

mean = sum(scores) / len(scores) 

print(mean)

maximum = max(scores)

minimum = min(scores)

x1 = int(len(scores) / 2)
x2 = int(len(scores) / 2 + 1)
median = (scores[x1] + scores[x2] ) / 2

print('平均値は' + str(mean))
print('最大値は' + str(maximum))
print('最小値は' + str(minimum))
print('中央値は' + str(median))