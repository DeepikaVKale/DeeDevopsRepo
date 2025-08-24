variable "aws_region" {
    description = "AWS region to deploy resources"
    type        = string
    default     = "ap-southeast-1"
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}

variable "vpc_name" {
    description = "Name of the VPC"
    type        = string
    default     = "TF-vpc"
}

variable "subnet_1_cidrs" {
    description = "List of CIDR blocks for subnet-1"
    type        = list(string)
    default     = ["10.0.1.0/24" , "10.0.2.0/24", "10.0.3.0/24"]
}

variable "subnet_1_azs" {
    description = "List of availability zones for subnet-1"
    type        = list(string)
    default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "subnet_2_cidrs" {
    description = "List of CIDR blocks for subnet-2"
    type        = list(string)
    default     = ["10.0.4.0/24" , "10.0.5.0/24", "10.0.6.0/24"]
}

variable "subnet_2_azs" {
    description = "List of availability zones for subnet-2"
    type        = list(string)
    default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type        = string
    default     = "ami-0933f1385008d33c4" #Ubuntu Server 24.04 LTS (HVM), SSD Volume Type
}

variable "instance_type" {
    description = "Instance type for the EC2 instance"
    type        = string
    default     = "t2.micro"
}

variable "subnet_id" {
    description = "Subnet ID where the EC2 instance will be launched"
    type        = string
    default     = "aws_subnet.subnet_1[*].id" #Provide Subnet ID after creating VPC and Subnets
}

variable "key_name" {
    description = "Key pair name for SSH access to the EC2 instance"
    type        = string
    default     = "singapore-key" #Provide your key pair name
}

variable "security_groups" {
    description = "List of security groups to associate with the EC2 instance"
    type        = list(string)
    default     = ["sg-08a00db328cdf6f70"] #Provide your security group ID
}

variable "volume_size" {
    description = "Size of the root block device in GB"
    type        = number
    default     = 15
}

variable "volume_type" {
    description = "Type of the root block device"
    type        = string
    default     = "gp3"
}

variable "instance_name" {
    description = "Name tag for the EC2 instance"
    type        = string
    default     = "TF-server"
}

variable "user_data_file" {
    description = "Path to the user data script file"
    type        = string
    default     = "docker-script.sh"
}
