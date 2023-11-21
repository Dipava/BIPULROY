# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

# VPC Public Subnets
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

# VPC Public Subnets
output "database_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.database_subnets
}

output "database_subnet_group_name" {
  description = "Name of database subnet group"
  value       = module.vpc.database_subnet_group_name
}


# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}
# AWS EC2 Security Group Terraform Outputs

# ALB Security Group Outputs
## loadbalancer_sg_group_id


output "loadbalancer_sg_group_id" {
  description = "The ID of the security group"
  value       = module.loadbalancer_sg.security_group_id
}

## loadbalancer_sg_vpc_id

output "loadbalancer_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.loadbalancer_sg.security_group_vpc_id
}

## loadbalancer_sg_group_name

output "loadbalancer_sg" {
  description = "The name of the security group"
  value       = module.loadbalancer_sg.security_group_name
}


# Private EC2 Instances Security Group Outputs
## private_sg_group_id

output "private_sg_group_id" {
  description = "The ID of the security group"
  value       = module.private_sg.security_group_id
}

## private_sg_group_vpc_id

output "private_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.private_sg.security_group_vpc_id
}

## private_sg_group_name

output "private_sg_group_name" {
  description = "The name of the security group"
  value       = module.private_sg.security_group_name
}




# RDS DB Instances Security Group Outputs
## rdsdb_sg_group_id

output "rdsdb_sg_group_id" {
  description = "The ID of the security group"
  value       = module.rdsdb_sg.security_group_id
}

## rdsdb_sg_group_vpc_id

output "rdsdb_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.rdsdb_sg.security_group_vpc_id
}

## rdsdb_sg_group_name

output "rdsdb_sg_group_name" {
  description = "The name of the security group"
  value       = module.rdsdb_sg.security_group_name
}





/*
output "sg_id" {
  description = "The ID of the security group"
  value       = module.vpc.sg_id
}


output "sg_arn" {
  description = "The ARN of the security group"
  value       = module.vpc.sg_arn
}

output "instance_arn" {
  description = "The ARN of the security group"
  value       = aws_instance.test-vm.arn
}

output "instance_public_ip" {
  description = "The ARN of the security group"
  value       = aws_instance.test-vm.public_ip
}

output "instance_private_ip" {
  description = "The ARN of the security group"
  value       = aws_instance.test-vm.private_ip
}

*/