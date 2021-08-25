variable "region" {
  default     = "us-east-2"
  description = "AWS Region"
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
    description = "CIDR Block for VPC"
}


variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
}

variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
}

variable "public_subnet_3_cidr" {
  description = "CIDR Block for Public Subnet 3"
}
