terraform {
  required_version = "~> 1.2"
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "~> 5.16.0" 
     }

  }
  backend "s3" {
    bucket         = "dipava-tfstate-files"
    key            = "dev/vpc/vpc.tfstate"
    region         = var.aws_region
    dynamodb_table = "c1-vpc"
  }
}

provider "aws" {
  region = var.aws_region
}

