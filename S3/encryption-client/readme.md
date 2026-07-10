## create a new bucket

```sh
aws s3api create-bucket --bucket cse-example-bucket-343 --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## create a file an upload to the bucket

```sh
echo "hello CSE" > file.txt
aws s3 cp file.txt s3://cse-example-bucket-343
```
