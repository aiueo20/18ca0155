def calculate(leftoperand,rightoperand,operator):
    if operator == "+":
        result = leftoperand + rightoperand
    elif operator == "-":
        result = leftoperand - rightoperand
    elif operator == "*":
        result = leftoperand * rightoperand
    elif operator == "/":
        result = leftoperand / rightoperand

    return result

t = calculate(5,2,"/")

print(t)