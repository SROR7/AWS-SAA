## Create A Secret Via Secret Manager 

```sh 
aws secretsmanager create-secret \
    --name MyTestSecret \
    --secret-string '{"password":"mypassword"}'
```