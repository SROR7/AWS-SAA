## Create A Secret Via Secret Manager 

```sh 
aws secretsmanager create-secret \
    --name MyTestSecret \
    --secret-string '{"password":"mypassword"}'
```

## Connection Via String Connection 

```sh 
psql "postgresql://postgres:q4%3Bb%5DE%5BOSn%60j%3Eu%25_SiNjD%3EJB5iADm%2C-%24@postgres-database.cxgemgygmnj4.eu-north-1.rds.amazonaws.com:5432/postgres?sslmode=require"
```

## Creating A Table

```sh 
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```