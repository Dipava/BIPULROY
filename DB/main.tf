locals {
    current_time = timestamp()
}

module "rdsdb" {
  #  depends_on = [data.terraform_remote_state.vpc]
    source  = "./modules/rdsdb"
    db_name  = var.db_name
    db_subnet_group_name = data.terraform_remote_state.vpc.outputs.database_subnet_group_name
    db_username = var.db_username
    db_password = var.db_password
    multi_az               = var.multi_az
    vpc_security_group_ids = [data.terraform_remote_state.rdsdb_sg.outputs.rdsdb_sg_group_id]
    port     = 3306
    engine               = var.engine
    engine_version       = var.engine_version
    instance_class       = var.instance_class
    performance_insights_enabled = var.performance_insights_enabled
    allocated_storage     = var.allocated_storage
    max_allocated_storage = var.max_allocated_storage
    maintenance_window              = var.maintenance_window
    backup_window                   = var.backup_window
#    enabled_cloudwatch_logs_exports = ["general"]
#    create_cloudwatch_log_group     = true
    backup_retention_period = var.backup_retention_period
    final_snapshot = var.final_snapshot_identifier
    skip_final_snapshot     = var.skip_final_snapshot
    deletion_protection     = var.deletion_protection
    storage_encrypted       = var.storage_encrypted
    create_monitoring_role  = var.create_monitoring_role
    monitoring_interval     = var.monitoring_interval
    rdspg_name = aws_db_parameter_group.rdspg.name
    apply_immediately    = true
}

resource "aws_db_parameter_group" "rdspg" {
  name   = var.rdspg_name
  family = var.rdspg_family

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_db_option_group" "rdsog" {
  name                     = "rds-og"
  option_group_description = "Terraform Option Group"
  engine_name              = var.engine
  major_engine_version     = var.major_engine_version

}