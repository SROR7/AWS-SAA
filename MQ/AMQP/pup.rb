require 'bunny'


connection = Bunny.new
connection.start

chanel = connection.create_channel
queue = chanel.queue('Hello')
exchange = chanle.default_exchange


begin
    exchange.publish("Hello World!", routing_key: queue.name)
    connection.close
rescue => e:  
    puts e.inspect
    channel.close
    connection.close
    exit(0)
end 