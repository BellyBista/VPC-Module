output "private" {
  value = aws_subnet.private.*.id
}

output "public" {
  value = aws_subnet.public.*.id

}

output "node_role" {
  value = module.eks-iam-roles.node_role
}

output "cluster_role" {
  value = module.eks-iam-roles.cluster_role
}

output "developer_password" {
  value = module.eks-iam-roles.developer_password
}

output "admin_password" {
  value = module.eks-iam-roles.admin_password
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr_block" {
  value = var.vpc_cidr
}

output "security_group_id" {
  value = aws_vpc.main.default_security_group_id
}