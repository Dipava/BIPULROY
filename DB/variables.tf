variable "aws_region" {
  description = "AWS Region"
  type = string 
  default = "ap-south-1"
}

variable "db_name" {
  description = "AWS RDS Database Name"
  type        = string
  default     = "rcldb"
}

variable "db_username" {
  description = "AWS RDS Database Login Username"
  type        = string
  default     = "root"
}

variable "db_password" {
  description = "AWS RDS Database Login Password"
  type        = string
  default     = "dbpassword"
}

variable "multi_az" {
  description = "RDS Multi AZ Distribution"
  type        = bool
  default     = true
}


variable "engine" {
  description = "AWS RDS Database Engine to Use"
  type        = string
}


variable "engine_version" {
  description = "AWS RDS Database Engine Version"
  type        = string
}

variable "instance_class" {
  description = "AWS RDS Database Instance Class"
  type        = string
}

variable "performance_insights_enabled" {
  description = "AWS RDS Database Performance Insights Selection"
  type        = bool
  default     = false
}

variable "allocated_storage" {
  description = "Desired Storage for AWS RDS Database"
  type        = number
}

variable "max_allocated_storage" {
  description = "Max Storage for AWS RDS Database"
  type        = number
}

variable "maintenance_window" {
  description = "AWS RDS Database Maintenance Window"
  type        = string
}

variable "backup_window" {
  description = "AWS RDS Database Backup Window"
  type        = string
}

variable "backup_retention_period" {
  description = "Backup Retention Period for AWS RDS Database"
  type        = number
}

variable "final_snapshot_identifier" {
  description = "Name of The SS Taken before The Deletion of AWS RDS Database"
  type        = string
}

variable "skip_final_snapshot" {
  description = "Determines Whether The Final SS of The RDS DB should be Taken"
  type        = bool
  default     = true
}

variable "deletion_protection" {
  description = "Deletion Protection Option for AWS RDS Database Instance"
  type        = bool
  default     = false
}

variable "storage_encrypted" {
  description = "Storage Encryption Option for AWS RDS Database Instance"
  type        = bool
  default     = false
}


variable "monitoring_interval" {
  description = "AWS RDS Database Monitoring Interval"
  type        = number
}


variable "create_monitoring_role" {
  description = "AWS DB Parameter Group Name"
  type        = bool
  default     = false

}

variable "rdspg_name" {
  description = "AWS DB Parameter Group Name"
  type        = string
}


variable "rdspg_family" {
  description = "AWS DB Parameter Group Family"
  type        = string
}

variable "major_engine_version" {
  description = "Major Engine Version for AWS DB"
  type        = string
}