## Register Job

```sh 
aws batch register-job-definition --job-definition-name myApp --type container --container-properties '{image: "my-docker-image"}'
```

## Sumbit the Job 

```sh 
aws batch submit-job --job-name my-job --job-definition myApp --job-queue my-job-queue
```