
variable "aws_region" {
    default = "ap-south-1"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "ec2.pem"
}

variable "vpc_id" {
    description = "VPI ID"
    type        = string
}
variable "environment" {
  default = "dev"
}

variable "cidr_block" {
  default = "172.20.0.0/16"
}

variable "public_subnets" {
    description = "public_subnets"
    type        = string
}

variable "private_subnets" {
    description = "private_subnets"
    type        = string
}