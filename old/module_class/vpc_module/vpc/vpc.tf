provider "aws" { 
  region = "us-east-1" 
}


resource "aws_vpc" "vpc" { 
  cidr_block           = var.cidr 
  enable_dns_hostnames = var.enable_dns_hostnames 
  enable_dns_support   = var.enable_dns_support 
} 

resource "aws_internet_gateway" "igw" { 
  vpc_id = aws_vpc.vpc.id 
} 

resource "aws_route" "internet_access" { 
  route_table_id         = aws_vpc.vpc.main_route_table_id 
  destination_cidr_block = "0.0.0.0/0" 
  gateway_id             = aws_internet_gateway.igw.id 
} 

resource "aws_subnet" "public" { 
  vpc_id     = aws_vpc.vpc.id 
  cidr_block = var.public_subnet 
} 