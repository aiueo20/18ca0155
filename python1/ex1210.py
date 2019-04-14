def turn_clockwise(direction):
    if direction == "N":
        direction = "E"
        return direction
    elif direction == "E":
        direction = "S"
        return direction
    elif direction == "S":
        direction = "W"
        return direction
    elif direction == "W":
        direction = "N"
        return direction
    else:
        return None


print(turn_clockwise(""))