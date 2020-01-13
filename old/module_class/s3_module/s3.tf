provider "aws"{ 
  region = "us-east-1" 
} 

module "bucket1" {  #u can just copy paste that module couple times and it'll create buckets for u
  source = "./modules"  
  bucketname = "some-made-up-bucket-csamatov" 
} 
