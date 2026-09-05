require 'ox'
require 'mongo'
require 'pry'


def insert collection 

    doc = {
        name: 'John Doe',
        age: 30,
        email: 'john.doe@example.com'
      }

    result = collection.insert_one(doc)
    puts result.inserted_id 

end 

def query(collection)

    collection = client[:people]
    collection.find.each do |doc|
        puts doc.inspect
    end

  end

# https://www.mongodb.com/docs/ruby-driver/current/connect/mongoclient/#std-label-ruby-client

client = Mongo::Client.new(['localhost:27017'], database: 'test')
db = client.database
collection = client[:people]
insert(collection)
query(collection)