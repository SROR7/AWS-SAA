## create 2 buckets 

```sh 
aws s3 mb s3://source-data-sync-97687
aws s3 mb s3://destantion-data-sync-97687
```

## upload files 

```sh 
echo "hello" >> file.txt
aws s3 cp file.txt s3://source-data-sync-97687
```
## create policies for data-sync
```sh 
aws iam create-policy --policy-name DataSyncS3Policy --policy-document file://datasync-s3-policy.json
aws iam attach-role-policy --role-name DataSyncRole --policy-arn arn:aws:iam::283277657906:policy/DataSyncS3Policy

aws iam create-role --role-name DataSyncRole --assume-role-policy-document file://trust-policy.json
aws iam attach-role-policy --role-name DataSyncRole --policy-arn arn:aws:iam::283277657906:policy/DataSyncRole
```

## create task in data-sync

```sh 
aws datasync create-location-s3 --s3-bucket-arn arn:aws:s3:::source-data-sync-97687 --s3-config BucketAccessRoleArn=arn:aws:iam::283277657906:role/DataSyncRole

aws datasync create-location-s3 --s3-bucket-arn arn:aws:s3:::destantion-data-sync-97687 --s3-config BucketAccessRoleArn=arn:aws:iam::283277657906:role/DataSyncRole

aws datasync create-task --source-location-arn arn:aws:datasync:eu-north-1:283277657906:location/loc-03f9fcc4215f4fa9c --destination-location-arn arn:aws:datasync:eu-north-1:283277657906:location/loc-06a50894a41f453fb --name "MyDataSyncTask"
```
