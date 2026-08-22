## Create A New Bucket

```sh 
aws s3 mb s3://star-trek-sf-54654 --region eu-north-1
```


## enable event-bridge-communication 

```sh 
aws s3api put-bucket-notification-configuration \
  --region eu-north-1 \
  --bucket star-trek-sf-54654 \
  --notification-configuration '{
    "EventBridgeConfiguration": {}
  }'
```


## upload the images 

```sh 
aws s3 cp DevOps.jpg s3://star-trek-sf-54654
aws s3 cp Spider.jpg s3://star-trek-sf-54654
```

## REFs

```sh
https://docs.aws.amazon.com/AmazonS3/latest/userguide/ev-events.html 
https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-pattern.html
https://docs.aws.amazon.com/rekognition/latest/dg/celebrities-procedure-image.html
```

## CleanUp 

```sh 
aws s3 rb s3://star-trek-sf-54654 --region eu-north-1
```