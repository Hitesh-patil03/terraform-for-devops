terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }

  backend "remote" {
    bucket = "state-lock-remote-bucket"
    aws_dynamodb_table = "state-lock-remote-table"
    key = "terraform.tf"
    region = "us-east-1" 
  }
}
