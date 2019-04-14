class State:
    def __init__(self):
        self.state = 'close'

    def change(self):
        if self.state == 'close':
            self.state = 'open'
        elif self.state == 'open':
            self.state == 'close'

    def get_state(self):
        return self.state

class Door:
    curstate = State()
    
    def __init__(self):
        self.state = State().get_state()
        self.front = False
        self.rear = False
    
    def on_front(self):
        if self.front == False:
            self.front = True
            self.curstate.state = 'open'
        elif self.front == True:
            self.curstate.state = 'open'

    def off_front(self):
        if self.rear == True:
            self.front = False
            self.curstate.state = 'open'
        elif self.rear == False:
            self.front = False
            self.curstate.state = 'close'

    def on_rear(self):
        if self.front == True:
            self.rear = True
            self.curstate.state = 'open'
        elif self.front == False:
            self.rear = True
            self.curstate.state = 'open'

    def off_rear(self):
        if self.front == True:
            self.rear = False
            self.curstate.state = 'open'
        elif self.front == False:
            self.rear = False
            self.curstate.state = 'close'

    def watch(self):
        if self.front == True:
            print("フロントに人が入りました")
        elif self.front == False:
            print("フロントから人が去りました")
        
        if self.rear == True:
            print("リアに人が入りました")
        elif self.rear == False:
            print("リアから人が去りました")
        
        if self.curstate.state == 'open':
            print("ドアは開いています")
        elif self.curstate.state == 'close':
            print("ドアは閉じています")

door = Door()
door.watch()
print('-------------------')
door.on_front()
door.watch()
print('-------------------')
door.off_front()
door.watch()
print('-------------------')
door.on_rear()
door.watch()
print('-------------------')
door.on_front()
door.watch()
print('-------------------')