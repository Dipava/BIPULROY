variable "db_name" {
  description = "AWS RDS Database Name"
  type        = string
  default     = " "
}

variable "db_subnet_group_name" {
  description = "Subnet Group Name for AWS RDS Database"
  type        = string
  default     = " "
}

variable "vpc_security_group_ids" {
  description = "Secuiry Group IDs for AWS RDS Database"
  type        = list(string)
  default     = [ ]
}

variable "port" {
  description = "RDS DB Port Number"
  type        = number
  default     = 3306
}


variable "db_username" {
  description = "AWS RDS Database Login Username"
  type        = string
  default     = " "
}

variable "db_password" {
  description = "AWS RDS Database Login Password"
  type        = string
  default     = " "
}

variable "multi_az" {
  description = "RDS Multi AZ Distribution"
  type        = bool
  default     = true
}


variable "engine" {
  description = "AWS RDS Database Engine to Use"
  type        = string
  default     = " "
}


variable "engine_version" {
  description = "AWS RDS Database Engine Version"
  type        = string
  default     = " "
}

variable "instance_class" {
  description = "AWS RDS Database Instance Class"
  type        = string
  default     = " "
}

variable "performance_insights_enabled" {
  description = "AWS RDS Database Performance Insights Selection"
  type        = bool
  default     = true
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
  default     = " "
}

variable "backup_window" {
  description = "AWS RDS Database Backup Window"
  type        = string
}

variable "backup_retention_period" {
  description = "Backup Retention Period for AWS RDS Database"
  type        = number
}

variable "final_snapshot" {
  description = "Name of The SS Taken before The Deletion of AWS RDS Database"
  type        = string
}

variable "skip_final_snapshot" {
  description = "Determines Whether The Final SS of The RDS DB should be Taken"
  type        = bool
  default     = false
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

variable "create_monitoring_role" {
  description = "AWS DB Parameter Group Name"
  type        = bool
  default     = true

}


variable "monitoring_interval" {
  description = "AWS RDS Database Monitoring Interval"
  type        = number
  default     = 0
}

variable "apply_immediately" {
  description = "AWS RDS Database Monitoring Interval"
  type        = bool
  default     = true
}


variable "rdspg_name" {
  description = "AWS DB Parameter Group Name"
  type        = string
  default     = " "
}


/*


variable "rdspg_family" {
  description = "AWS DB Parameter Group Family"
  type        = string
  default     = " "
}

variable "parameter_name" {
  description = "AWS DB Parameter Name"
  type        = string
  default     = " "
}

variable "parameter_value" {
  description = "AWS DB Parameter Value"
  type        = string
  default     = " "
}

variable "create_before_destroy" {
  description = "Determines whether the DB Parameter is created before Destryed"
  type        = bool
  default     = true
}

variable "rdsog_name" {
  description = "AWS DB Option Group Name"
  type        = string
  default     = " "
}


variable "option_group_description" {
  description = "AWS DB Option Group Description"
  type        = string
  default     = " "
}


variable "major_engine_version" {
  description = "Major Engine Version for AWS DB"
  type        = string
  default     = " "
}


variable "option_name" {
  description = "AWS DB Option Group Option Name"
  type        = string
  default     = " "
}

variable "option_settings_name" {
  description = "AWS DB Option Group Option Settings Name"
  type        = string
  default     = " "
}

variable "option_settings_name_value" {
  description = "AWS DB Option Group Option Settings Value"
  type        = string
  default     = " "
}

*/