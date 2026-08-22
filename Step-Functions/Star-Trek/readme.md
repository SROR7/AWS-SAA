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

## State Function

```sh 
```

## upload the images 

```sh 
aws cp 