require 'bunny'

connection = Bunny.new

chanel = connection.create_channel
queue = chanel.queue('Hello')

begin
    queue.subscribe(block: true) do |delivery_info, properties, body|
        puts body
    end 
rescue => e: 

    puts e.inspect
    channel.close
    connection.close
    exit(0)
end 
