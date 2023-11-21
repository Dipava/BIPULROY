terraform {
  required_version = "~> 1.2"
  required_providers {
    aws = {
     source = "hashicorp/aws"
     version = "~> 5.16.0" 
     }
    random = {
      source = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket         = "dipava-tfstate-files"
    key            = "dev/apps/apps.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "c3-apps"
  }
}

provider "aws" {
  region  = "ap-south-1"
}
