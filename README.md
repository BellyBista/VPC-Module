# Terraform AWS EKS VPC Module

## Overview

This Terraform module is designed to create an Amazon Virtual Private Cloud (VPC) suitable for hosting an Amazon EKS (Elastic Kubernetes Service) cluster. It sets up the necessary networking components, including public and private subnets, Internet Gateway, NAT Gateway, and route tables.


## Security & Compliance [<img src="https://cloudposse.com/wp-content/uploads/2020/11/bridgecrew.svg" width="250" align="right" />](https://bridgecrew.io/)

Security scanning is graciously provided by Bridgecrew. Bridgecrew is the leading fully hosted, cloud-native solution providing continuous Terraform security and compliance.

| Benchmark | Description |
|--------|---------------|
| [![Infrastructure Security](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=INFRASTRUCTURE+SECURITY) | Infrastructure Security Compliance |
| [![CIS KUBERNETES](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/cis_kubernetes_16)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=CIS+KUBERNETES+V1.6)| Center for Internet Security, KUBERNETES Compliance |
| [![CIS AWS](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=CIS+AWS+V1.2) | Center for Internet Security, AWS Compliance |
| [![CIS AZURE](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/cis_azure)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=CIS+AZURE+V1.1) | Center for Internet Security, AZURE Compliance |
| [![PCI-DSS](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/pci_dss_v321)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=PCI-DSS+V3.2.1) | Payment Card Industry Data Security Standards Compliance |
| [![NIST-800-53](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/nist)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=NIST-800-53) | National Institute of Standards and Technology Compliance |
| [![ISO27001](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/iso)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=ISO27001) | Information Security Management System, ISO/IEC 27001 Compliance |
| [![SOC2](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/soc2)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=SOC2)| Service Organization Control 2 Compliance |
| [![CIS GCP](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/cis_gcp)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=CIS+GCP+V1.1) | Center for Internet Security, GCP Compliance |
| [![HIPAA](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/hipaa)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=HIPAA) | Health Insurance Portability and Accountability Compliance |
| [![CIS EKS](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/cis_eks_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=CIS+EKS+V1.1) | Center for Internet Security, EKS Compliance |
| [![CIS DOCKER](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/cis_docker_12)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=CIS+DOCKER+V1.2) | Center for Internet Security, DOCKER Compliance |
| [![CIS GKE](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/cis_gke_11)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=CIS+GKE+V1.1) | Center for Internet Security, GKE Compliance |
| [![FEDRAMP (MODERATE)](https://www.bridgecrew.cloud/badges/github/quadri-olamilekan/terraform-aws-eks-vpc/fedramp_moderate)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=quadri-olamilekan%2Fterraform-aws-eks-vpc&benchmark=FEDRAMP+%28MODERATE%29) | Federal Risk and Authorization Management Program(MODERATE) |

## Usage

```hcl
module "eks-vpc" {
  source  = "quadri-olamilekan/eks-vpc/aws"
  version = "1.0.1"
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