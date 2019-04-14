import random
rn = random.random() * 10

global com_hand

if 0 <= rn <= 3:
    com_hand = "rock"
elif 3 <= rn <= 7:
    com_hand = "scissors"
elif 7 <= rn <= 10:
    com_hand = "paper"

player_hand = input("手を入力してください：")

judge = 0
try:
    if not(player_hand == "rock" or player_hand == "scissors" or player_hand == "paper"):
        raise Exception
except Exception as e:
    print("rock,scissors,paperのどれかを入力してください")
    judge = 1
if judge == 1:
    pass
else:
    if com_hand == player_hand:
        print("あいこです")
    elif ((com_hand == "rock") & (player_hand == "scissors")) | ((com_hand == "scissors") & (player_hand == "paper")) | ((com_hand == "paper") & (player_hand == "rock")):
        print("あなたの負けです")
    else:
        print("あなたの勝ちです")