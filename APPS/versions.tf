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
    key            = "dev/module3-asg-alb/alb-asg.tfstate"
    region         = "us-east-1"
    dynamodb_table = "module3-alb-asg"
  }
}

provider "aws" {
  region  = var.region
}
