## Create CloudWatch Log 

```sh 
aws logs create-log-group --log-group-name mylogs
```

## Create Log Stream

<!-- ```sh 
aws logs create-log-stream --log-group-name mylogs --log-stream-name cloudtrail
``` -->

## Update Trail 

```sh 
aws cloudtrail update-trail \
    --name Trail1 \
    --s3-bucket-name amzn-s3-cloudtrail-example-4535 \
    --cloud-watch-logs-log-group-arn arn:aws:logs:eu-north-1:283277657906:log-group:mylogs:* \
    --cloud-watch-logs-role-arn arn:aws:iam::283277657906:role/CloudTrailRoleCloudwatch
```