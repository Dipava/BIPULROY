output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = module.vpc.vpc_arn
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_main_route_table_id" {
  description = "The ID of the main route table associated with this VPC"
  value       = module.vpc.vpc_route_table_id
}

output "vpc_owner_id" {
  description = "The ID of the AWS account that owns the VPC"
  value       = module.vpc.vpc_owner_id
}

output "vpc_subnets_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc.vpc_subnets
}


output "vpc_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = module.vpc.vpc_subnet_arns
}

output "vpc_subnets_cidr_blocks" {
  description = "List of cidr_blocks of private subnets"
  value       = module.vpc.vpc_subnets_cidr_blocks
}

output "main_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.vpc.main_route_table_ids
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = module.vpc.igw_id
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