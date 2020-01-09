#go to region us-east-1
provider "aws" { 
    region = "us-east-1" 
} 

#search for a CentOS Latest with the owner
data "aws_ami" "centos" { #i can call it latest or whatever 
    filter { 
        name = "root-device-type" 
        values = ["ebs"] #instance_store  
    } 
    
    filter { 
        name = "name" 
        values = ["CentOS Linux 7 x86_64 HVM EBS *"] 
    } 

    most_recent = true 
    owners = ["679593333241"] #find CentOS owner 
} 

#show the AMI id 
output "centos" { 
    value = data.aws_ami.centos.id 
} 

#key-pair creation 
resource "aws_key_pair" "towerkey" { 
    key_name   = "towerkey" 
    public_key = file("~/.ssh/id_rsa.pub") 
} 

#provisioning an instance by using that AMI ID
resource "aws_instance" "tower_ec2" {
    ami           = data.aws_ami.centos.id #use that AMI ID that data source will provide u 
    instance_type = "t2.micro"
    key_name = aws_key_pair.towerkey.key_name #use that key of terraform machine 

    #do an actual task 
    provisioner "remote-exec" { 
        connection { 
            host = self.public_ip 
            type = "ssh" 
            user = "centos"
            private_key = file("~/.ssh/id_rsa") #hardcoded 
            } 
            inline = [ 
                "sudo yum install -y epel-release", 
                ] 
    } 
    tags = {
        Name = "Tower"
    } 
}

#mapping an IP to a domain 
resource "aws_route53_record" "tower" { 
    zone_id = "Z6XWWD56QDJWX" 
    name = "tower.csamatov.net" 
    type = "A" 
    ttl = "300" 
    records = [aws_instance.tower_ec2.public_ip] #to get the IP address of the instance provisioning 
} 