require 'mqtt'

host = "localhost"
message = "Hello World! MQTT"
topic = "test/topic"

begin 
    MQTT::CLient.connect(host) do |client|
        client.publish(topic,message)
    end 
rescue => e: 
    puts e.inspect
end