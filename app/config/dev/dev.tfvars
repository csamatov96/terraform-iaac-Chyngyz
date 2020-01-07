name = "wordpress_1"
cidr = "10.0.0.0/16" 

environment = "dev" 
s3_bucket = "wordpress-chyngyz-2019-dev" #Will be used to set backend.tf 
s3_folder_project = "application" #Will be used to set backend.tf 
s3_folder_region = "us-east-1" #Will be used to set backend.tf 
s3_folder_type = "state" #Will be used to set backend.tf 
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf 
