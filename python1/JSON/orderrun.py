import json

with open('orders.json','r') as f:
    df = json.load(f)

print(df["Orders"][0]["Id"])
print(df["Orders"][0]["Order"][1])