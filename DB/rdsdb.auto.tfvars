# RDS Database Variables
db_name = "rcldb"
db_instance_identifier = "rcldb"
db_username = "root"
allocated_storage = 20
max_allocated_storage = 100
engine_version       = "8.0.28"
major_engine_version = "8.0"
engine               = "mysql"
instance_class       = "db.t2.micro"
maintenance_window   = "Mon:00:00-Mon:03:00"
backup_window        = "03:00-06:00"
backup_retention_period = 0
final_snapshot_identifier = "rdsdbss"
monitoring_interval     = 0
rdspg_family         = "mysql8.0"
rdspg_name         = "rds-pg"