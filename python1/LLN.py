#コインで大数の法則を理解する

import random

coin = [1,0]
count = 1
x = 0
countcoin = 0
while True:
    countcoin += random.choice(coin)
    
    x = countcoin / count
    print(x)
    count += 1
