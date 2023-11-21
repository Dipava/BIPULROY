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
    key            = "dev/rds/rds.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "c2-rds"
  }  
}


provider "aws" {
  region = "ap-south-1"
}