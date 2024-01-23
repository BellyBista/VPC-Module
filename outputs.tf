output "private" {
  value = aws_subnet.private.*.id
}

output "public" {
  value = aws_subnet.public.*.id

}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "security_group_id" {
  value = aws_default_security_group.default.id
}