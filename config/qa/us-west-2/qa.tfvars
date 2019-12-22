ami           = "ami-0eab3a90fc693af19" #London (centos)
instance_type = "t2.micro" 
count_instance  = 4
associate_public_ip_address = "true"
user            = "ec2-user"
ssh_key_location = "~/.ssh/id_rsa" #private key