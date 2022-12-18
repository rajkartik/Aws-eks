module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.1.1"

  cluster_name = "app-eks-cluster"  
  cluster_version = "1.22"

  subnet_ids = module.app-vpc.private_subnets
  vpc_id = module.app-vpc.vpc_id
  
  tags = {
    environment = "dev"
    application = "hello-app"
  }
  cluster_endpoint_public_access = true

  
 
  eks_managed_node_groups = {
    dev = {
      min_size     = 1
      max_size     = 1
      desired_size = 1

      instance_types = ["t2.small"]
    }
  }
}