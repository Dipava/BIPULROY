#Local Variables


variable "business_division" {
  description = "business_division"
  type = string 
  default = "blabla"
}

variable "environment" {
  description = "environment"
  type = string 
  default = "dev"
}


# VPC Input Variables

# VPC Name

variable "aws_region" {
  description = "AWS Region"
  type = string 
  default = "ap-south-1"
}

variable "vpc_name" {
  description = "VPC Name"
  type = string 
  default = "demovpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string 
  default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type = bool
  default = true 
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type = bool
  default = true   
}

variable "vpc_database_subnet_group_name" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = string
  default = "db-subnet"
}
  
# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true  
}

variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}


variable "public_sg_name" {
  description = "Name of the public security group"
  type        = string
  default     = " "
}

variable "public_sg_description" {
  description = "Description of the public security group"
  type        = string
  default     = " "
}



/*

variable "public_ingress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "public_ingress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "public_ingress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "public_ingress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "public_egress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "public_egress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "public_egress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "public_egress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "private_ingress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "private_ingress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "private_ingress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "private_ingress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "private_egress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "private_egress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "private_egress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "private_egress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "database_ingress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "database_ingress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "database_ingress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "database_ingress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}

variable "database_egress_source_port" {
  description = "souce port for ingress rule"
  type        = string
  default     = " "
}

variable "database_egress_destination_port" {
  description = "destination port for ingress rule"
  type        = string
  default     = " "
}

variable "database_egress_protocol" {
  description = "protocol for ingress rule"
  type        = string
  default     = " "
}

variable "database_egress_cidr" {
  description = "CIDR for ingress rule"
  type        = list(string)
  default     = []
}


*/