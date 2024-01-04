# Amazon EKS Cluster Deployment with Terraform

This repository contains Terraform configuration files to deploy an Amazon EKS cluster in the AWS ap-southeast-1 region.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- AWS CLI configured with the necessary credentials.

## Terraform Configuration

1. Clone this repository:

   ```bash
   git clone <repository_url>
   cd terraform-eks-cluster
```

2. Initialize and apply the Terraform configuration

   ```bash
   terraform init
   terraform apply
```

3. Access EKS cluster

   ```bash
   export KUBECONFIG=$(terraform output kubeconfig)
```
