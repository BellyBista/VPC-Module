variable "region" {
  type        = string
  description = "AWS region"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "project" {
  type        = string
  description = "Project name"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for subnet"
}

variable "private_cidr" {
  type        = list(string)
  description = "Private subnet cidr"
}

variable "public_cidr" {
  type        = list(string)
  description = "Public subnet cidr"
}
