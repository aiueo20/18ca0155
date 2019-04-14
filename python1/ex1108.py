chicket = 1800

age = int(input("年齢を入力してください："))
gender = input("性別を入力してください（男or女）：")

if (age <= 18) or (gender == "女"):
    print("入館料は" + str(int(chicket / 2)) + "円です")

print("入館料は" + str(chicket) + "円です")