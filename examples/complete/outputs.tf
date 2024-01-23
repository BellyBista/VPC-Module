output "private" {
  value = module.eks-vpc.private
}

output "public" {
  value = module.eks-vpc.public

}

output "vpc_id" {
  value = module.eks-vpc.vpc_id
}

output "security_group_id" {
  value = module.eks-vpc.security_group_id
}