resource "aws_s3_bucket" "s3bucket" {
  bucket = "my-tf-test-bucket-chyngyz-jc"
  acl    = "private"
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  versioning {
    enabled = true
  }
}