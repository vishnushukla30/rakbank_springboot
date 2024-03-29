vpc_name        = "EKS_VPC"
vpc_cidr        = "10.123.0.0/16"
azs             = ["me-central-1a", "me-central-1b"]
private_subnets = ["10.123.1.0/24", "10.123.2.0/24"]
public_subnets  = ["10.123.3.0/24", "10.123.4.0/24"]
intra_subnets   = ["10.123.5.0/24", "10.123.6.0/24"]
cluster_name    = "rakbank"
aws_region      = "me-central-1"
ecr-repo-name   = "springboot"
