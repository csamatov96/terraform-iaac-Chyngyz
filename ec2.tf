resource "aws_instance" "ec2" {
  count = 5
  ami             = "ami-00068cd7555f543d5"
  instance_type   = "t2.micro"
  associate_public_ip_address = "true"
  key_name = aws_key_pair.key_resource.key_name
  security_groups = ["allow_ssh"] #referring and attaching created Sec Group by its name
  user_data = file("userdata_file")

  lifecycle{
    prevent_destroy = false
  }

  tags = {
    Name = "ec2_instance${count.index +1}"
  }
}