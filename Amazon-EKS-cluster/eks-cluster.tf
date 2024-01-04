provider "aws" {
  region = "ap-southeast-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-eks-cluster"
  subnets         = ["subnet-xxxxxxxxxxxxxxxxx", "subnet-yyyyyyyyyyyyyyyyy", "subnet-zzzzzzzzzzzzzzzzz"]
  vpc_id          = "vpc-xxxxxxxxxxxxxxxxx"
  cluster_version = "1.21"
  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      key_name = "your-key-pair-name"
    }
  }
}

output "kubeconfig" {
  value = module.eks.kubeconfig_filename
}
