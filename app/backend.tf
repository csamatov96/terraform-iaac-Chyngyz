terraform { 
backend "s3" { 
bucket = "wordpress-chyngyz-2019-dev" 
key = "application/us-east-1/state/dev/infrastructure.tfstate" 
region = "us-east-1" 
  } 
}
