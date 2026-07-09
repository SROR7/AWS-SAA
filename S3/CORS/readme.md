## create a bucket

```sh
aws s3api create-bucket --bucket cors-example-bucket-3443 --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## change block public access

```sh
aws s3api put-public-access-block --bucket cors-example-bucket-3443 --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-example-bucket-3443 --policy file://bucket-policy.json
```

## enabled web hosting

```sh
aws s3api put-bucket-website --bucket cors-example-bucket-3443 --website-configuration file://website.json
```

## upload the index.html file

```sh
aws s3 cp index.html s3://cors-example-bucket-3443
```

## access the bucket URL and check if the index.html is there

http://cors-example-bucket-3443.s3-website.eu-north-1.amazonaws.com

## create another website

```sh
aws s3api create-bucket --bucket cors-example2-bucket-3443 --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1

aws s3api put-public-access-block --bucket cors-example2-bucket-3443 --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"

aws s3api put-bucket-policy --bucket cors-example2-bucket-3443 --policy file://bucket-policy2.json

aws s3api put-bucket-website --bucket cors-example2-bucket-3443 --website-configuration file://website.json
```

## upload the main.js file

```sh
aws s3 cp main.js s3://cors-example2-bucket-3443
```

## reupload the index.html file to the frist bucket

```sh
aws s3 cp index.html s3://cors-example-bucket-3443
```

## create a API GateWay with mock response and then test the endpoint

curl.exe -i -H "Accept: application/json" https://m5fqxwntue.execute-api.eu-north-1.amazonaws.com/prod/hello

## set CORS to our bucket

```sh
aws s3api put-bucket-cors --bucket cors-example-bucket-3443 --cors-configuration file://cors.json
```
