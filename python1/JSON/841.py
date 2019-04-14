import json
import pprint

s = r'{"C": "\u3042\u3044\u3046","A":{"one":1,"two":2},"B":[{"python":1,"JavaScript":10},{"Java":2,"C":20}]}'
print(s)

d = json.loads(s)

pprint.pprint(d, width=40)