def banner(func):
    def wrapper(*args):
        print('<msg>')
        func(*args)
        print('</msg>')

    return wrapper

@banner
def show_message(msg):
    print(msg)

show_message('Hello')      