terraform {
  backend "s3" {
    bucket = "terrraform-us-chyngyz" #backend-iaac-chyngyz
    key    = "aws/ec2/ec2_state" #iam/iam_state
    region = "us-east-1" #
  }
}