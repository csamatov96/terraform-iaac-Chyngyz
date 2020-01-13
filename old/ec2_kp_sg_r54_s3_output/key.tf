resource "aws_key_pair" "key_resource" {
  key_name   = "terraform_workstation"
  public_key = file("~/.ssh/id_rsa.pub")
}