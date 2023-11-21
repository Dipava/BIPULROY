# RDS DB Outputs
output "db_instance_address" {
  description = "The address of the RDS instance"
  value       = resource.aws_db_instance.rdsdb.address
}

output "db_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = resource.aws_db_instance.rdsdb.arn
}

output "db_instance_availability_zone" {
  description = "The availability zone of the RDS instance"
  value       = resource.aws_db_instance.rdsdb.availability_zone 
}

output "db_instance_endpoint" {
  description = "The connection endpoint"
  value       = resource.aws_db_instance.rdsdb.endpoint
}

output "db_instance_engine" {
  description = "The database engine"
  value       = resource.aws_db_instance.rdsdb.engine
}

output "db_instance_engine_version_actual" {
  description = "The running version of the database"
  value       = resource.aws_db_instance.rdsdb.engine_version_actual
}

output "db_instance_hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)"
  value       = resource.aws_db_instance.rdsdb.hosted_zone_id
}

output "db_instance_id" {
  description = "The RDS instance ID"
  value       = resource.aws_db_instance.rdsdb.id
}

output "db_instance_resource_id" {
  description = "The RDS Resource ID of this instance"
  value       = resource.aws_db_instance.rdsdb.resource_id
}

output "db_instance_status" {
  description = "The RDS instance status"
  value       = resource.aws_db_instance.rdsdb.status
}

output "db_instance_name" {
  description = "The database name"
  value       = resource.aws_db_instance.rdsdb.db_name 
}

output "db_instance_username" {
  description = "The master username for the database"
  value       = resource.aws_db_instance.rdsdb.username
  sensitive   = true
}

output "db_instance_password" {
  description = "The database password (this password may be old, because Terraform doesn't track it after initial creation)"
  value       = resource.aws_db_instance.rdsdb.password
  sensitive   = true
}

output "db_instance_port" {
  description = "The database port"
  value       = resource.aws_db_instance.rdsdb.port
}


output "db_parameter_group_id" {
  description = "The db parameter group id"
  value       = resource.aws_db_instance.rdsdb.id
}

output "db_parameter_group_arn" {
  description = "The ARN of the db parameter group"
  value       = resource.aws_db_instance.rdsdb.arn
}
