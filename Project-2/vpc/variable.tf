variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "vpc_name" {
    description = "Name of the VPC"
    type        = string
}

variable "subnet_1_cidrs" {
    description = "List of CIDR blocks for subnet-1"
    type        = list(string)
}

variable "subnet_1_azs" {
    description = "List of availability zones for subnet-1"
    type        = list(string)
}

variable "subnet_2_cidrs" {
    description = "List of CIDR blocks for subnet-2"
    type        = list(string)
}

variable "subnet_2_azs" {
    description = "List of availability zones for subnet-2"
    type        = list(string)
}

variable "aws_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}
