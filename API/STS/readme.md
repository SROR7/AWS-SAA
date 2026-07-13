## create a user with on permissions

we need to create a user with no permissions

```sh
aws iam create-user --user-name STS-example
aws iam create-access-key --user-name STS-example
aws configure
```

## test Who you R

```sh
aws sts get-caller-identity
```

## create a Role

```

```
