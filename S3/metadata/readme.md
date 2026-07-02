## create a bucket

```md
aws s3api create-bucket --bucket metadata-sror-example --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## create a new file and put it in the bucket

```md
echo "hello sror" > file.txt
aws s3api put-object --bucket metadata-sror-example --body file.txt --key file.txt --metadata keyName=string
```

## get metadata

```md
aws s3api head-object --bucket metadata-sror-example --key file.txt
```
