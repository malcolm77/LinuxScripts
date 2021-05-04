import requests

url = 'http://localhost:8086/write?db=hue'

myobj = {'-data-binary': '"temp value=18"'}



x = requests.post(url, data = myobj)

print(x.text)
