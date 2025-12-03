terraform {
  required_version = "1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = "Terraform"
}

# Creating a Virtual Private Cloud

resource "aws_vpc" "my-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my-vpc"
  }
}

# Creating a Subnet

resource "aws_subnet" "my-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "sa-east-1"

  tags = {
    Name = "my-subnet"
  }
}

# Creating a Internet Gateway

resource "aws_internet_gateway" "my-ig" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = "my-ig"
  }
}

# Creating a Route Table

resource "aws_route_table" "my-rt" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-ig.id
  }

  tags = {
    Name = "my-rt"
  }
}

