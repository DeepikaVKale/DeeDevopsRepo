output "cluster_id" {
  value = aws_eks_cluster.Eks.id
}

output "node_group_id" {
  value = aws_eks_node_group.Eks.id
}

output "vpc_id" {
  value = aws_vpc.Eks_vpc.id
}

output "subnet_ids" {
  value = aws_subnet.Eks_subnet[*].id
}