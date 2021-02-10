import json
import jsonpath

def read_locator_from_json(locationname):
    f = open('P:/Desktop/GitHub/RobotFramework/RobotTest/Locators/ElementAndData.json')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locationname)
    return value[0]
    