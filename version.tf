terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "citrus-it-terraform-state"
    key    = "workshop-state"
    region = "eu-central-1"
  }
}

resource "aws_s3_bucket" "terraform_s3_bucket" {
  bucket = "citrus-it-terraform-state"
}


provider "aws" {
  region = "eu-central-1"
}
