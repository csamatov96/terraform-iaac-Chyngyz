data "terraform_remote_state" "main" { 

  backend = "s3" 

  config = { 

    bucket = "wordpress-chyngyz-2019-dev" #state of VPC stack 

    key    = "application/us-east-1/state/dev/infrastructure.tfstate" #whole path to it  

    region = "us-east-1" 

  } 

} 

output "full_list" { 

  value = data.terraform_remote_state.main.outputs.* #display me the whole output of that state file 

} 

output "private_subnet" { 

  value = data.terraform_remote_state.main.outputs.private_subnets[1] #display me the subnet ID of that state file 

} 

resource "aws_instance" "aws" { 

  ami = "ami-0ff8a91507f77f867" 

  instance_type  = "t2.micro" 

  subnet_id = data.terraform_remote_state.main.outputs.private_subnets[1] #provision an instance at that particular subnet  

} 
