## Create A Bucket 

```sh
aws s3 mb s3://kendra-example-345234
```
## Sync File With S3 Bucket 

```sh 
aws s3 sync (the files) S3://kendra-example-345234
```

## Create Kendra-index 

```sh 
aws kendra create-index \
    --name "example index 1" \
    --edition "DEVELOPER_EDITION" \
    --role-arn "arn:aws:iam::283277657906:role/KendraAWS" 
```

## Create Data Source

```sh 
aws kendra create-data-source \
    --name "example data source 1" \
    --description "Example data source 1 for example index 1 contains the first set of example documents" \
    --tags '{"Key": "test resources", "Value": "kendra"}, {"Key": "test resources", "Value": "aws"}' \
    --role-arn "arn:aws:iam::283277657906:role/KendraDataSourceS3" \
    --index-id exampleindex1 \
    --language-code "es" \
    --schedule "0 0 18 ? * TUE,MON,WED,THU,FRI,SAT *" \
    --configuration '{"TemplateConfiguration": {"Template": file://s3schemaconfig.json}}' \
    --type "TEMPLATE" \
    --custom-document-enrichment-configuration '{"PostExtractionHookConfiguration": {"LambdaArn": "arn:aws:iam::my-account-id:function/my-function-ocr-docs", "S3Bucket": "s3://amzn-s3-demo-bucket/scanned-image-text-example-docs"}, "RoleArn": "arn:aws:iam:my-account-id:role/KendraRoleForCDE"}' \
    --vpc-configuration '{"SecurityGroupIds": ["sg-1234567890abcdef0"], "SubnetIds": ["subnet-1c234","subnet-2b134"]}'
```

## Statr Sync

```sh 
aws kendra start-data-source-sync-job \
  --id \
  --index-id \
  --region 
```


## Query 

```sh 
aws kendra query \
  --index-id \ 
  --query-text \
  --region 
```