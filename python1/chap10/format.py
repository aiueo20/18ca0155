#x = input('Input: ')

print('{0:b} {0:d} {0:o} {0:x} {0:X}'.format(255))

print('{:f}'.format(123.45690199999))

print('Hello,{:s}!'.format('Python'))

print('[1234567890]')

print('[{:d}]'.format(12))

print('[{:5d}]'.format(12))

print('[{:05d}]'.format(12))

print('[{:+05d}]'.format(12))

print('[1234567890]')

print('[{:f}]'.format(12.345))

print('[{:11f}]'.format(12.345))

print('[{:011f}]'.format(12.345))

print('[{:.2f}]'.format(12.345))

print('[{:+15f}]'.format(12.345))

print('[{:+15f}]'.format(-12.345))

print('[{:<10d}]'.format(123))

print('[{:>10d}]'.format(123))

print('[{:^10d}]'.format(123))

s = 'Python'

print(str(s))

print(repr(s))

s = 'Hello\\tPython'

print(str(s))

print(repr(s))

print('1234567890')

print('12'.rjust(10))

print('12'.ljust(10))

print('12'.center(10))

print('12'.zfill(5))