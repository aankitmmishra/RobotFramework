import json
import requests
import jsonpath


a = '{"K1":"Val1","K2":"Val2"}'

json_result = json.loads(a)

print(json_result)


print(json_result['K1'])

apiurl = "https://reqres.in/api/users?page=2"

#Make a request
req = requests.get(apiurl)
#Print the response
print(req.text)
#check status
assert req.status_code == 200
#parse response in JSON format
responsejson = json.loads(req.text)

print(responsejson)

#apply JSON Path

x=jsonpath.jsonpath(responsejson, 'per_page')

print(x[0])

y=jsonpath.jsonpath(responsejson,'data[1].first_name')

print(y[0])

for val in responsejson['data']:
    print(val['first_name'])
