terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "data_lake" {
  bucket = "warsaw-transit-data-lake-90123"

  tags = {
    Name        = "Warsaw Transit Data Lake"
    Environment = "dev"
  }
}