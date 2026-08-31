## Create S3 Bucket 

```sh 
aws s3 mb s3://amzn-s3-cloudtrail-example-4535
```

## Put The CloudTrail's Bucket Policies 

```sh 
aws s3api put-bucket-policy \
  --bucket amzn-s3-cloudtrail-example-4535 \
  --region eu-north-1 \
  --policy file://Bucket-Policy.json
```

## Create Trail

```sh 
aws cloudtrail create-trail \
    --name Trail1 \
    --s3-bucket-name amzn-s3-cloudtrail-example-4535 \
    --is-multi-region-trail \
    --region eu-north-1
```

## Turn On Logging 

```sh 
aws cloudtrail start-logging --name Trail1
```