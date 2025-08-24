output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "subnet_1_ids" {
  description = "List of Subnet-1 IDs"
  value       = module.vpc.subnet_1_ids
}

output "subnet_2_ids" {
  description = "List of Subnet-2 IDs"
  value       = module.vpc.subnet_2_ids
}

output "PublicIP" {
    description = "Public IP of the EC2 instance"
    value       = module.ec2.public_ip
}