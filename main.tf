terraform {

  cloud {
    organization = "JClamp456"

    workspaces {
      name = "aws-homelab"
    }
  }

 required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
provider "aws" {
  region     = "eu-west-1"
 }

# Create an S3 bucket
resource "aws_s3_bucket" "london-01" {
  bucket = "london"


  tags = {
    Name        = "London"
    Environment = "HomeLab"
  }
}
