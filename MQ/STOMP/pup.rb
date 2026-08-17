require 'stomp'


login = 'admin'
passcode = 'Testing123456!'
host = 'https://b-a4d99257-b800-459d-9229-dbf89bcb8eff.mq.eu-north-1.on.aws'
port = '61614'


config = {
hosts: [
        login: login,
        passcode: passcode, 
        host: host, 
        port: port, 
        ssl: false
    ]
}

client = Stomp::Client.new(config)

dest = '/queue/test'
client.publish(dest, "Hello World! STOMP")
client.close