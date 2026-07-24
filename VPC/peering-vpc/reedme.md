## VPC-1-ID

```sh
$VPC1_ID="vpc-0b60bf4a38f044d8b"
```

## VPC-2-ID

```sh
$VPC2_ID="vpc-02e1d700b443d2e95"
```

## peering connection

```sh
aws ec2 create-vpc-peering-connection --vpc-id $VPC1_ID --peer-vpc-id $VPC2_ID
```

## accept the peering connection

```sh
aws ec2 accept-vpc-peering-connection --vpc-peering-connection-id pcx-0d4df4d63147bab63
```

## configure the route-table of the VPCs

```sh
aws ec2 create-route --route-table-id rtb-021f1b5be8370891b --destination-cidr-block 12.0.0.0/16 --vpc-peering-connection-id pcx-0d4df4d63147bab63
aws ec2 create-route --route-table-id rtb-061bc18d0c7d873a1 --destination-cidr-block 10.0.0.0/16 --vpc-peering-connection-id pcx-0d4df4d63147bab63
```
