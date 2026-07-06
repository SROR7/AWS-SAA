## create a bucket

```sh
aws s3api create-bucket --bucket bucket-policies-example-bucket-877 --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## create the policies

```sh
aws s3api put-bucket-policy --bucket bucket-policies-example-bucket-877 --policy file://policy.json
```

## accesss the bucket from the other account

```sh
echo "hello" > file.txt
aws s3 cp file.txt s3://bucket-policies-example-bucket-877
aws s3 ls
```
