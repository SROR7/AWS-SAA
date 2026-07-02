## create a new bucket

```md
aws s3api create-bucket --bucket sror-perfixes-example-456 --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## create a directory inside it

```md
aws s3api put-object --bucket sror-perfixes-example-456 --key="hello/"
```
