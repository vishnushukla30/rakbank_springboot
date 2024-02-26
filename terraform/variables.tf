variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
}

variable "vpc_cidr" {
  type        = string
  description = "cidr block"
}

variable "azs" {
  type        = list(string)
  description = "EKS Azs"
}

variable "private_subnets" {
  type        = list(string)
  description = "private_subnets"
}

variable "public_subnets" {
  type        = list(string)
  description = "public_subnets"
}

variable "intra_subnets" {
  type        = list(string)
  description = "Intranet subnet"
}

variable "aws_region" {
  type        = string
  description = "aws_region"
}

variable "ecr-repo-name" {
  type        = string
  description = "ecr-repo-name"
}
