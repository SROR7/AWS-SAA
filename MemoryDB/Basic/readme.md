## Create SubnetGroup

```sh 
aws memorydb create-subnet-group \
    --region eu-north-1 \
    --subnet-group-name mysubnetgroup \
    --description "my subnet group" \
    --subnet-ids subnet-0741dac532f7c1446 subnet-0127f67f8fdd6a56c \
    --query "SubnetGroup.ARN" \
    --output text
```

> Do Not Use The Default VPC, Create A New One And Use It 

## Create User 

```sh 
aws memorydb create-user \
    --user-name sror \
    --access-string "on ~* &* +@all" \
     --authentication-mode \
         Passwords="Testing123456789!",Type=password
```

## Create ACL

```sh 
aws memorydb create-acl \
    --acl-name "new-acl-1" \
    --user-names "sror"
```


## Create CLuster

```sh 
aws memorydb create-cluster \
    --cluster-name my-new-cluster \
    --node-type db.r6g.large \
    --acl-name new-acl-1 \
    --subnet-group mysubnetgroup
```