## create a bucket

```md
aws s3api create-bucket --bucket storage-class-change-4654 --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## create a file and upload it in our bucket

```md
echo "hello" > file.txt

aws s3 cp file.txt s3://storage-class-change-4654 --storage-class STANDARD_IA
```

## Cleaup

```md
aws s3 rm s3://storage-class-change-4654/file.txt
aws s3 rb s3://storage-class-change-4654
```
