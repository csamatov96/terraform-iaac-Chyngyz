#go to region us-east-2
provider "aws" { 
    region = "us-east-2" 
} 

#search for a Ubuntu latest with the owner
data "aws_ami" "ubuntu" { #i can call it latest or whatever 
    filter { 
        name = "root-device-type" 
        values = ["ebs"] #instance_store  
        } 
    most_recent = true 
    owners = ["099720109477"] 
} 

#show the AMI id 
output "ami" { 
    value = "${data.aws_ami.ubuntu.id}" 
} 

#provisioning an instance by using that AMI 
resource "aws_instance" "web" {
    ami           = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWorld"
    } 
}