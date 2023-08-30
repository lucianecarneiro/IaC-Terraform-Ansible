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
    tags = {
        Name = "PrimeiraInstancia"
    }
}

# Note: You didn't use the -out option to save this plan, 
# so Terraform can't guarantee to take exactly these actions 
# if you run "terraform apply" now.