## Create ServerLess Cache

```sh 
aws elasticache create-serverless-cache \
    --serverless-cache-name example \
    --engine redis \
    --major-engine-version 7 \
    --subnet-ids subnet-0741dac532f7c1446 subnet-0127f67f8fdd6a56c subnet-0653f60dd460da8ac
```

## Installing Redis

```sh 
sudo apt update
sudo apt install redis-server -y
sudo systemctl enable redis-server
redis-cli ping 
```


## Connect To Instance 

```sh 
redis-cli -h example-8dyrcn.serverless.eun1.cache.amazonaws.com 
```