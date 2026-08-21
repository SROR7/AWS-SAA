import json

def lambda_handler(event, context):

    info = {
        "name": "John",
        "age": 30,
        "city": "New York"
        }

    info_json = json.dumps(info)

    print(info_json)

    return {
        'message': message
    }