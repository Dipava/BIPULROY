terraform {
  required_version = "~> 1.2"
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "~> 5.0" 
     }

  }
  backend "s3" {
    bucket         = "dipava-tfstate-files"
    key            = "dev/vpc/vpc.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "c1-vpc"
  }
}

provider "aws" {
  region = "ap-south-1"
}

