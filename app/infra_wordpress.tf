module "wordpress1" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name 
  cidr = var.cidr

  #hardcoded 
  azs             = [var.azs1, var.azs2, var.azs3] 
  private_subnets = [var.private_subnet1, var.private_subnet2, var.private_subnet3]
  public_subnets  = [var.public_subnet1, var.public_subnet2, var.public_subnet3]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}