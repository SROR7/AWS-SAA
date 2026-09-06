## Put item In The Table 

```sh 
aws dynamodb put-item \
    --table-name MyTable \
    --item file://item.json \
    --return-consumed-capacity TOTAL \
    --return-item-collection-metrics SIZE
```