resource "aws_instance" "web" { #
  count = var.count_instance
  ami             = var.ami
  instance_type   = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name = aws_key_pair.key_resource.key_name
  security_groups = ["allow_ssh_http"] #refer only by its name not resource name
  #user_data = file("userdata_file")

  provisioner "remote-exec" {
    connection {
      host = self.public_ip
      type = "ssh"
      user = var.user
      private_key = file(var.ssh_key_location)
      }
      inline = [
        "sudo yum install -y epel-release",
        "sudo yum install httpd -y",
        "sudo systemctl start httpd",
        ]
  }

  lifecycle{
    prevent_destroy = false
  }

  tags = {
    Name = "ec2_instance${count.index +1}"
  }

  
}