resource "aws_db_instance" "rdsdb" {
    db_name  = var.db_name
    db_subnet_group_name = var.db_subnet_group_name
    username = var.db_username
    password = var.db_password
    multi_az               = var.multi_az
    vpc_security_group_ids = var.vpc_security_group_ids
    port     = var.port
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
    final_snapshot_identifier = var.final_snapshot
    skip_final_snapshot     = var.skip_final_snapshot
    deletion_protection     = var.deletion_protection
    storage_encrypted       = var.storage_encrypted
#   create_monitoring_role  = true
    monitoring_interval     = var.monitoring_interval
    parameter_group_name = var.rdspg_name
    apply_immediately    = var.apply_immediately
}


/*
resource "aws_db_parameter_group" "rdspg" {
  name   = var.rdspg_name
  family = var.rdspg_family

  parameter {
    name  = var.parameter_name
    value = var.parameter_value
  }

}

resource "aws_db_option_group" "rdsog" {
  name                     = var.rdsog_name
  option_group_description = var.option_group_description
  engine_name              = var.engine
  major_engine_version     = var.major_engine_version

  option {
    option_name = var.option_name

    option_settings {
      name  = var.option_settings_name
      value = var.option_settings_name_value
    }
  }
}

*/