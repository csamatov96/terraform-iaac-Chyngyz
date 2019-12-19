terraform {
  backend "s3" {
    bucket = "backend-iaac-chyngyz"
    key    = "infrastructure"
    region = "us-east-1"
  }
}