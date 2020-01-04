terraform {
  backend "s3" {
    bucket = "backend-iaac-chyngyz"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}