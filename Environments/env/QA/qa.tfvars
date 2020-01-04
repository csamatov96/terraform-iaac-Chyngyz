environment = "qa" 
s3_bucket = "terrraform-us-chyngyz" #Will be used to set backend.tf 
s3_folder_project = "application" #Will be used to set backend.tf 
s3_folder_region = "us-east-1" #Will be used to set backend.tf 
s3_folder_type = "state" #Will be used to set backend.tf 
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf

ami = ""
instance_type = "t2.micro"
key_name = "~/.ssh/id_rsa.pub"