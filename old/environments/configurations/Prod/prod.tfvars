environment = "prod" 
s3_bucket = "prod-csamatov" #Will be used to set backend.tf 
s3_folder_project = "application" #Will be used to set backend.tf 
s3_folder_region = "us-east-1" #Will be used to set backend.tf 
s3_folder_type = "state" #Will be used to set backend.tf 
s3_tfstate_file = "infrastructure.tfstate" #Will be used to set backend.tf

ami = "ami-02eac2c0129f6376b" #CentOS
instance_type = "m5.large"
key_name = "myMac"