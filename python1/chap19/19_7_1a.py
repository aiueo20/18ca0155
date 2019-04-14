def bunner(func):
    def wrapper(*args):
        print('<msg>')
        func(*args)
        print('</msg')

    return wrapper

def show_message(msg):
    print(msg)

decorated_message = bunner(show_message)
decorated_message('Hello')