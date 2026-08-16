require "aws-sdk-sqs"


client = Aws::SQS::Client.new

queue_url="https://sqs.eu-north-1.amazonaws.com/283277657906/SQS-Stander-Queue-MyQueue-yEPtaMdkBwLQ"
resp = client.send_message({
  queue_url: queue_url, 
  message_body: "Hello Ruby!", 
  delay_seconds: 1,
  message_attributes: {
    "Fruit" => {
      string_value: "Apple",
      data_type: "String",
    },
  },
})