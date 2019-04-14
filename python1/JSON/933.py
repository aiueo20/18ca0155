import urllib.error
import urllib.request

URL = 'http://www.itmedia.co.jp/news/'

try:
    with urllib.request.urlopen(URL) as res:
        print('HTTP/1.1' if res.version == 11 else 'HTTP/1.0', res.code,res.reason)
    print(res.headers,end='')
    print(res.read().decode('utf-8'))

except urllib.error.HTTPError as err:
    print(err)

except urllib.error.URLError as err:
    print(err)