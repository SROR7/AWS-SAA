## create a bucket

```sh
aws s3api create-bucket --bucket ecryption-example-bucket --region eu-north-1 --create-bucket-configuration LocationConstraint=eu-north-1
```

## create a file and uplaod it in the bucket with encryption sse-s3

```sh
echo "hello encryption" > file.txt
aws s3 cp file.txt s3://ecryption-example-bucket
```

## put the object with the encryption of KMS

```sh
aws s3api put-object --bucket ecryption-example-bucket --key file.txt --body file.txt --server-side-encryption aws:kms --ssekms-key-id e5f0e30e-5bfd-443e-9161-eef9b79f54e0
```

## put object with sse-c

```sh
export ENDCONDED_KEY=$(openssl rand 32 | base64)
echo $ENDCONDED_KEY
export MD5_VALUE=$(echo -n $ENDCONDED_KEY | base64 --decode | md5sum | awk '{print $1}' | base64) 

aws s3api put-object --bucket ecryption-example-bucket --key file.txt --body file.txt --sse-customer-algorithm AES256 --sse-customer-key $ENDCONDED_KEY --sse-customer-key-md5 $MD5_VALUE  
```
