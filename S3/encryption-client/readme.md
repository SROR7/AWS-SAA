## create a new bucket

```sh
aws s3api create-bucket --bucket cse-example-bucket-343 --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## run our SDK ruby script 

```sh 
bundle exec ruby encrypt.rb
```
## cleanUp 

```sh 
aws s3 rm s3://cse-example-bucket-343/fle.txt 
aws s3 rb s3://cse-example-bucket-343 