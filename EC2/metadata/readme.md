## modify the v2 of metadata 

```sh 
aws ec2 modify-instance-metadata-options --instance-id i-0556cba67b34e3823 --http-protocol-ipv6 enabled --http-endpoint enabled
```

## generate the token 

```sh 
$token = Invoke-RestMethod -Method PUT -Uri "http://13.63.58.118/latest/api/token" -Headers @{"X-aws-ec2-metadata-token-ttl-seconds"="21600"}
```