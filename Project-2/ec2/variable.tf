variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type        = string
}

variable "instance_type" {
    description = "Instance type for the EC2 instance"
    type        = string
}

variable "subnet_id" {
    description = "Subnet ID where the EC2 instance will be launched"
    type        = string
}

variable "key_name" {
    description = "Key pair name for SSH access to the EC2 instance"
    type        = string
}

variable "security_groups" {
    description = "List of security groups to associate with the EC2 instance"
    type        = list(string)
}

variable "volume_size" {
    description = "Size of the root block device in GB"
    type        = number
    default     = 30
}

variable "volume_type" {
    description = "Type of the root block device"
    type        = string
    default     = "gp3"
}

variable "instance_name" {
    description = "Name tag for the EC2 instance"
    type        = string
}


