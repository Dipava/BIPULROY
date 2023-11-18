

module "vpc" {
  source  = "./modules/aws-vpc"
  # VPC Basic Details
  name = var.vpc_name
  cidr = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets  
  # Database Subnets
  database_subnets = var.vpc_database_subnets
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  database_subnet_group_name = var.vpc_database_subnet_group_name
  # NAT Gateways - Outbound Communication
  enable_nat_gateway = var.vpc_enable_nat_gateway 
  single_nat_gateway = var.vpc_single_nat_gateway
  # VPC DNS Parameters
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = local.common_tags
  vpc_tags = local.common_tags
  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }  
  database_subnet_tags = {
    Type = "Private Database Subnets"
  }
}


module "loadbalancer_sg" {
  source  = "./modules/aws-security-group"
  name = "loadbalancer-sg"
  description = "Security Group with HTTP port open for entire Internet, egress ports are all world open"
  vpc_id = module.vpc.vpc_id
  ingress_rules       = ["http-80-tcp","https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules       = ["all-all"]
  ingress_with_cidr_blocks = [
      {
        from_port   = 81
        to_port     = 81
        protocol    = 6
        description = "Allow Port 81 from the Internet"
        cidr_blocks = "0.0.0.0/0"
      },
    ]
    
    tags = local.common_tags
  }

module "private_sg" {
  source  = "./modules/aws-security-group"
  name = "private-sg"
  description = "Security Group with HTTP & SSH port open for entire VPC Block (IPv4 CIDR), egress ports are all world open"
  vpc_id = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp", "http-80-tcp", "http-8080-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  egress_rules       = ["all-all"]
  tags = local.common_tags
}

#Secutity group for RDS DB

module "rdsdb_sg" {
  source  = "./modules/aws-security-group"
  name = "rdsdb_sg"
  description = "Access to MySQL DB from Entire CIDR Block"
  vpc_id = module.vpc.vpc_id
  egress_rules       = ["all-all"]
  tags = local.common_tags

ingress_with_source_security_group_id = [
    {
      rule                     = "mysql-tcp"
      source_security_group_id = data.aws_security_group.default.id
    },
    {
      from_port                = 3306
      to_port                  = 3306
      protocol                 = tcp
      description              = "MySQL from Private SG"
      source_security_group_id = data.aws_security_group.default.id
    },
  ]

}

/*
ingress_with_cidr_blocks = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      description = "MySQL from with VPC"
      cidr_blocks = module.vpc.vpc_cidr_block
    },
  ]
*/



/*
resource "aws_instance" "test-vm" {
  depends_on = [module.vpc]
  ami           = data.aws_ami.amzlinux2.id
  instance_type = "t2.micro"
  associate_public_ip_address = true
  key_name = var.instance_keypair
  iam_instance_profile = "ec2-admin-role"
  subnet_id = module.vpc.vpc_subnets
  vpc_security_group_ids = [module.vpc.sg_id]
  user_data = file("${path.module}/user_data.sh")
  tags = local.tags

}
*/
