terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = var.aws_region
}

module "vpc" {
    source = "./Project-2/vpc"

    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
    subnet_1_cidrs = var.subnet_1_cidrs
    subnet_1_azs = var.subnet_1_azs
    subnet_2_cidrs = var.subnet_2_cidrs
    subnet_2_azs = var.subnet_2_azs
}

module "ec2_instance" {
    source = "./Project-2/ec2"

    ami_id           = var.ami_id
    instance_type    = var.instance_type
    subnet_id        = var.subnet_id
    key_name         = var.key_name
    security_groups  = var.security_groups
    volume_size      = var.volume_size
    volume_type      = var.volume_type
    instance_name    = var.instance_name
    user_data_file   = var.user_data_file
}
