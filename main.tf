terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1" # Define region as per your account
}

resource "aws_s3_bucket" "K21_CI_CD_Bucket" {
  bucket = "k21-demo-github-action-tf"

  object_lock_enabled = false

  tags = {
    Environment = "Prod"
  }
}
