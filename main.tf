terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Or your desired version
    }
  }
}

provider "aws" {
  region = "eu-west-2" # Replace with your desired region
}

#resource "aws_instance" "example" {
#  ami           = "ami-0c94855ba95c574c8" # Replace with a valid AMI ID for your region
#  instance_type = "t2.micro" # Or another instance type

# Create a VPC
resource "aws_vpc" "tfproject" {
  cidr_block = "10.0.0.0/16"
}