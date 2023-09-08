terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    key_name = "iac-alura"
    user_data_replace_on_change = true
    tags = {
        Name = "Terraform Ansible Python"
    }
}