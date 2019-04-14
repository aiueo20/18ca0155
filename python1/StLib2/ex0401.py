s = input("文字列を入力してください：")

ENCODING = 'utf-8'
print(s.encode(ENCODING).hex())