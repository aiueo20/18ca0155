s = 'A\x61 あ'
print(s.encode())
print(s.encode('utf-8'))
print(s.encode("shift_jis"))
print(s.encode('euc-jp'))