import json
import pprint

with open('test.json','r') as f:
    df = json.load(f)

df['D'] = 'わをんXYZ'
pprint.pprint(df)