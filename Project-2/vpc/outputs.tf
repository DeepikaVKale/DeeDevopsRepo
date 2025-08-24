output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.vpc.id
}

output "subnet_1_ids" {
  description = "List of Subnet-1 IDs"
  value       = aws_subnet.subnet_1[*].id
}

output "subnet_2_ids" {
  description = "List of Subnet-2 IDs"
  value       = aws_subnet.subnet_2[*].id
}