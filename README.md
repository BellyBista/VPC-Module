# Terraform AWS EKS VPC Module

## Overview

This Terraform module is designed to create an Amazon Virtual Private Cloud (VPC) suitable for hosting an Amazon EKS (Elastic Kubernetes Service) cluster. It sets up the necessary networking components, including public and private subnets, Internet Gateway, NAT Gateway, and route tables.

## Usage

```hcl
module "eks-vpc" {
  source  = "quadri-olamilekan/eks-vpc/aws"
  version = "1.0.4"
  # insert the required variables here
}
```

## Features
- Creates a well-architected VPC for hosting Amazon EKS clusters.
- Configures public and private subnets across multiple Availability Zones.
- Sets up Internet Gateway and NAT Gateway for external and controlled internet access.
- Defines route tables for efficient traffic routing.
- Supports customization through input variables.


## Notes

- Please ensure that you have the necessary AWS credentials and permissions before applying this module.

- Feel free to customize the module based on your specific requirements.

- For any issues or questions, contact the module maintainer at olamilekanbello1023@gmail.com  or via phone at +13065021578.

## License

This Terraform module is licensed under the MIT License. 