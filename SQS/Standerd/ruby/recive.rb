require "aws-sdk-sqs"
require "pry"

client = Aws::SQS::Client.new

queue_url="https://sqs.eu-north-1.amazonaws.com/283277657906/SQS-Stander-Queue-MyQueue-yEPtaMdkBwLQ"


resp = client.receive_message({
  queue_url: queue_url, 
  attribute_names: ["All"], 
  message_system_attribute_names: ["All"], 
  max_number_of_messages: 10,
  wait_time_seconds: 1,
})

resp.messages.each do |message|
    puts message.receipt_handle
    puts message.body
    puts message.attributes.inspect
    handle = message.receipt_handle
    resp = client.delete_message({
        queue_url: "queue_url", 
        receipt_handle: handle,
    })
end 

binding.pry