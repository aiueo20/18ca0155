b = b'\x61\x62\x63'
print(b, len(b))

b += b'xyz'
print(b, len(b))

b *= 3
print(b, len(b))