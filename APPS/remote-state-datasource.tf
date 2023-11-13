data "terraform_remote_state" "vpc" {
  backend  = "s3"
  config   = {
    bucket =  " "
    key    =  "*/*/vpc.tfstate"
    region =  var.aws_region
  }
}

data "terraform_remote_state" "loadbalancer_sg" {
  backend  = "s3"
  config   = {
    bucket =  " "
    key    =  "*/*/vpc.tfstate"
    region =  var.aws_region
  }
}

data "terraform_remote_state" "private_sg" {
  backend  = "s3"
  config   = {
    bucket =  " "
    key    =  "*/*/vpc.tfstate"
    region =  var.aws_region
  }
}


data "terraform_remote_state" "rdsdb" {
  backend  = "s3"
  config   = {
    bucket =  " "
    key    =  "*/*/rds.tfstate"
    region =  var.aws_region
  }
}
