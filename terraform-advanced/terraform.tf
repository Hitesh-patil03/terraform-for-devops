terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.38.0"
    }
  }

  backend "s3" {
    bucket             = "state-lock-remote-bucket"
    dynamodb_table = "state-lock-remote-table"
    key                = "terraform.tf"
    region             = "us-east-1"
  }
}
