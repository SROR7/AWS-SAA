## create our NACL

```sh

$VPC_ID="vpc-031926069b6b22c91"
aws ec2 create-network-acl --vpc-id $VPC_ID
```

## add public ip (Elastic ip) for the EC2 instace

```sh
aws ec2 allocate-address --domain vpc --query "AllocationId" --output text
```

## connect the AllocationId to the Ec2 instance

```sh
aws ec2 associate-address --instance-id i-0a47adabe545409b7 --allocation-id eipalloc-08999c34f60518ce6
```

## show that the EC2 has the public Ip

```sh
aws ec2 describe-instances --instance-ids i-0a47adabe545409b7 --query "Reservations[].Instances[].{PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress}" --output table
```

## add entry

```sh
aws ec2 create-network-acl-entry --network-acl-id acl-009751c43975d922e --rule-number 90 --protocol -1 --rule-action deny --egress --cidr-block 13.60.73.14/32
```
