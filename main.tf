provider "aws" {
  region = "us-west-2"
  access_key = "AKIA4NVWMM7QA2PQOVMK"
  secret_key = "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"
}

resource "aws_vpc" "development-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "development"
    vpc_env = "dev"
  }
}

resource "aws_subnet" "dev-subnet-1" {
  vpc_id = aws_vpc.development-vpc.id
  cidr_block = "10.0.10.0/24"
  availability_zone = "us-west-2a"
  tags = {
    Name = "subnet-1-dev"
  }
}

data "aws_vpc" "existing_vpc" {
  default = true
}

resource "aws_subnet" "dev-subnet-2" {
  vpc_id = data.aws_vpc.existing_vpc.id
  cidr_block = "172.31.64.0/20"
  availability_zone = "us-west-2a"
  tags = {
    Name = "subnet-2-default"
  }
}
