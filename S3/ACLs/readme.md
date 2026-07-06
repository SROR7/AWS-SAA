## create a bucket

```sh
aws s3api create-bucket --bucket acls-bucket-example --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## turn of the block pulic access to ACLs

```sh
aws s3api put-public-access-block --bucket acls-bucket-example --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

## get the public access policies

```sh
aws s3api get-public-access-block --bucket acls-bucket-example
```

## change the ownership control

```sh
aws s3api put-bucket-ownership-controls --bucket acls-bucket-example --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## change the ACLs to allow for a user in another aws account

```sh
aws s3api put-bucket-acl --bucket acls-bucket-example  --access-controll-policy="file://policy.json"
```

## access the bucket form the other account

```sh
echo "hi bucket" > file.txt
aws s3 cp file.txt s3://acls-bucket-example
aws s3 list
```
