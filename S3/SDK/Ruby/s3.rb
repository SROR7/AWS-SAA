require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

bucket_name = ENV['BUCKET_NAME']
region = 'eu-north-1'
puts bucket_name

client = Aws::S3::Client.new(region: region)

resp = client.create_bucket({
  bucket: bucket_name, 
  create_bucket_configuration: {
    location_constraint: region, 
  }, 
})

binding.pry

number_of_files = 1 + rand(6)
puts "Number Of Files Is: #{number_of_files}"

Dir.mkdir('./files') unless Dir.exist?('./files')

number_of_files.times.each do |i|
    puts "i : #{i}"
    file_name = "File_#{i}.txt"
    output_path = "./files/#{file_name}" 

    File.open(output_path, 'w') do |f| 
        f.write SecureRandom.uuid
    end 

    File.open(output_path, 'rb') do |file|
        client.put_object(
            bucket: bucket_name,
            key: file_name,
            body: file
        )
    end 
end