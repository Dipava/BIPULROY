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
    key            = "dev/c2-rds/rds.tfstate"
    region         = var.aws_region
    dynamodb_table = "c2-rds"
  }  
}


provider "aws" {
  region = var.aws_region
}