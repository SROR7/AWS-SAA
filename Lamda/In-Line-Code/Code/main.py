def lambda_handler(event, context):

    message = 'Hello {} {}!'.format(event['frist_name'], event['last_name'])

    return {
        'message': message
    }