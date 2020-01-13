terraform {

  backend "s3" {

    bucket = "terraform-vpc-module-app" #

    key    = "aws/vpc_state" #

    region = "us-east-1" #
  }
}