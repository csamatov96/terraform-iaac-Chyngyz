terraform { 
backend "s3" { 
bucket = "wordpress-chyngyz-2019-dev" 
key = "application/us-east-1/state/dev/infrastructure.tfstate" 
dynamodb_table = "state_lock" #u can give any name u want 
region = "us-east-1" 

  } 
}
