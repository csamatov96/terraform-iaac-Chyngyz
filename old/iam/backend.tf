terraform {
  backend "s3" {
    bucket = "terrraform-us-chyngyz" #backend-iaac-chyngyz
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}