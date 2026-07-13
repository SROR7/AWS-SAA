## create a user with on permissions

we need to create a user with no permissions

```sh
aws iam create-user --user-name STS-example
aws iam create-access-key --user-name STS-example
aws configure
```

## test Who you R

```sh
aws sts get-caller-identity
```

## create a Role

```sh
chmod u+x bin/deploy 
./bin/deploy 
```
## Use a new user crednetials and assume role 

```sh 
aws iam put-user-policy \
  --user-name STS-example \
  --policy-name AllowAssumeRole \
  --policy-document file://policy.json


aws sts assume-role --role-arn arn:aws:iam::283277657906:role/sts-fun-example-stack-StsRole-l1zUKFD3J6uq --role-session-name s3-sts-fun-3 
```