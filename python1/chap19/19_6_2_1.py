def get_prime_numbers(x=2):
    while True:
        for i in range(2, x):
            if x % i == 0:
                break
        else:
            yield x

        x += 1

it = get_prime_numbers()

for num in range(10):
    print(next(it))