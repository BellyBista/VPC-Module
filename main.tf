

#1. Create VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project}-vpc"
  }
}

#2. Create IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "igw"
  }
}

#3. Create EIP
resource "aws_eip" "nat" {

  tags = {
    Name = "nat"
  }

}

#4. Create NAT gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id

  tags = {
    Name = "nat"
  }

  depends_on = [aws_internet_gateway.igw]
}

#5. Create private subnet
resource "aws_subnet" "private" {
  count             = length(var.private_cidr)
  vpc_id            = aws_vpc.main.id
  cidr_block        = element(var.private_cidr, count.index)
  availability_zone = element(var.availability_zones, count.index)

  tags = {
    "Name"                            = "private"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }
}

#6. Create public subnet
resource "aws_subnet" "public" {
  count                   = length(var.public_cidr)
  vpc_id                  = aws_vpc.main.id
  cidr_block              = element(var.public_cidr, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true

  tags = {
    "Name"                            = "public"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/demo"      = "owned"
  }

}

#7. Create private route table
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  depends_on = [aws_subnet.private]

  tags = {
    Name = "private"
  }

}

#8. Create public route table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  depends_on = [aws_subnet.public]

  tags = {
    Name = "public"
  }

}

#9. Create public routes
resource "aws_route" "public_internet_gateway" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id

  depends_on = [aws_route_table.public]

}

#10. Create private routes
resource "aws_route" "private_nat_gateway" {
  route_table_id         = aws_route_table.private.id
  nat_gateway_id         = aws_nat_gateway.nat.id
  destination_cidr_block = "0.0.0.0/0"

  depends_on = [aws_route_table.private]

}

#11. Create private route association
resource "aws_route_table_association" "private" {
  count = length(var.private_cidr)

  subnet_id      = element(aws_subnet.private[*].id, count.index)
  route_table_id = aws_route_table.private.id

  depends_on = [aws_route.private_nat_gateway, aws_subnet.private]

}

#12. Create public route association
resource "aws_route_table_association" "public" {
  count = length(var.public_cidr)

  subnet_id      = element(aws_subnet.public[*].id, count.index)
  route_table_id = aws_route_table.public.id

  depends_on = [aws_route_table_association.private, aws_subnet.public]

}