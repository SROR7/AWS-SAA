## create a new s3 bucket

```md
aws s3 mb s3://my-checksum-exaple-bucket
```

## create a file

```md
echo "hello sror" > file.txt
```

## get the checksum for the file

```md
Get-FileHash -Path ".\file.txt" -Algorithm SHA256
```

## upload the file to the s3 bucket

```md
aws s3 cp file.txt s3://my-checksum-exaple-bucket
aws s3api head-object --bucket my-checksum-exaple-bucket --key file.txt
```

## upload a file with a different kind of checksum

```md
echo "hi sror" > hifile.txt
aws s3api put-object --bucket my-checksum-exaple-bucket --key hifile.txt --body hifile.txt --checksum-algorithm="crc32"
aws s3api head-object --bucket my-checksum-exaple-bucket --key hifile.txt
```
