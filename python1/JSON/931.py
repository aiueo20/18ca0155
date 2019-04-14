import urllib.request

URL = 'http://example.com'

with urllib.request.urlopen(URL) as res:
    body = res.read()

print(body)