## Create A Content Bucket 

```sh 
aws s3 mb s3://videos.example34563.com
```

## Create The IAM Role 

```sh 
aws iam create-role `
  --role-name ElasticTranscoderRole `
  --assume-role-policy-document file://trust-policy.json
```

## Create A Pipeline

```sh 
aws elastictranscoder create-pipeline `
    --name Example `
    --input-bucket salesoffice.example.com-source `
    --role arn:aws:iam::283277657906:role/ElasticTranscoderRole `
    --content-config file://content-config.json --thumbnail-config file://thumbnail-config.json `
    --region eu-north-1
```

## This Service Does NOT Exist Any More <3