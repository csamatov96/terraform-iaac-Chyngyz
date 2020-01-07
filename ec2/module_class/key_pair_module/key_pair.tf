provider "aws"{ 
  region = "us-east-1" 
} 

 

module "keycsamatov" { 
  source           = "./module" 
  key_name         = "TerraformVM" 
  public_key       = "~/.ssh/id_rsa.pub" 

} 