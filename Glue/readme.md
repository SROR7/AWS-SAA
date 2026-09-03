## Create A S3 Bucket 

```sh 
aws s3 mb s3://glue-example-5464
```

## Get The Data 

```sh 

# Download The Data From Here 

https://catalog.data.gov/dataset/fy-2025-disability-compensation-recipients-by-county
```

## Upload To S3 bucket 

```sh 
aws s3 cp export.csv s3://glue-example-5464/data/
```


## Create DataBase

```sh 
aws glue create-database \
    --database-input Name=myDataBase
```

## Create Glue Crewler

```sh 
aws glue create-crawler \ 
    --name MyClewler \ 
    --role AWSServiceGlueRole \ 
    --database-name myDataBase \ 
    --targets '{"S3Targets": [{"Path}": "s3://glue-example-5464/data"}]}' \ 
    --classifiers [] \ 
    --table-prefix myClewler_
```