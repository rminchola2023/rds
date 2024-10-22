variable "tags_all" {
  description = "(Optional) A mapping of tags which should be assigned to the AWS services, the tag is important for the costs for environment"
  type = map(any)
  default = {}
}
############################################################################################################
#############################            RDS Database              #########################################
############################################################################################################
#Pre-requisite for association with private subnets
variable "db_subnet_group_name" {
  description = "(Optional) The name of the DB subnet group. If omitted, Terraform will assign a random, unique name."
  type = string
  default = ""
}
variable "db_subnets_id" {
  description = "value"
  type = list(string)
  default = []
}

#db mysql instance
variable "mysql_db_allocated_storage" {
  description = "(Required) unless a snapshot_identifier or replicate_source_db is provided, The allocated storage in gibibytes. If max_allocated_storage is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If replicate_source_db is set, the value is ignored during the creation of the instance."
  type = number
  default = null
}

variable "mysql_db_identifier" {
  description = "(Optional) The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier. Required if restore_to_point_in_time is specified."
  type = string
  default = ""
}

variable "mysql_db_name" {
  description = "(Optional) The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the AWS documentation for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica."
  type = string
  default = ""
}

variable "mysql_db_engine" {
  description = "(Required) unless a snapshot_identifier or replicate_source_db is provided, The database engine to use. For supported values, see the Engine parameter in API action CreateDBInstance. Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see Comparison between Aurora MySQL 1 and Aurora MySQL 2 in the Amazon RDS User Guide."
  type = string
  default = ""
}

variable "mysql_db_engine_version" {
  description = "(Optional) The engine version to use. If auto_minor_version_upgrade is enabled, you can provide a prefix of the version such as 8.0 (for 8.0.36). The actual engine version used is returned in the attribute engine_version_actual, see Attribute Reference below. For supported values, see the EngineVersion parameter in API action CreateDBInstance. Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'."
  type = string
  default = ""
}

variable "mysql_db_instance_class" {
  description = "(Required) The instance type of the RDS instance."
  type = string
  default = ""
}

variable "mysql_db_storage_type" {
  description = "(Optional) One of standard (magnetic), gp2 (general purpose SSD), gp3 (general purpose SSD that needs iops independently) io1 (provisioned IOPS SSD) or io2 (block express storage provisioned IOPS SSD). The default is io1 if iops is specified, gp2 if not."
  type = string
  default = ""
}

variable "mysql_db_storage_encrypted" {
  description = "(Optional) Specifies whether the DB instance is encrypted. Note that if you are creating a cross-region read replica this field is ignored and you should instead declare kms_key_id with a valid ARN. The default is false if not specified."
  type = string
  default = null
}

variable "mysql_db_username" {
  description = " (Required) unless a snapshot_identifier or replicate_source_db is provided, Username for the master DB user. Cannot be specified for a replica."
  type = string
  default = ""
}

variable "mysql_db_password" {
  description = "(Required) unless manage_master_user_password is set to true or unless a snapshot_identifier or replicate_source_db is provided or manage_master_user_password is set. Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if manage_master_user_password is set to true."
  type = string
  default = ""
}

variable "mysql_db_parameter_group_name" {
  description = "(Optional) Name of the DB parameter group to associate."
  type = string
  default = ""
}

variable "mysql_db_skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created. If false is specified, a DB snapshot is created before the DB instance is deleted, using the value from final_snapshot_identifier. Default is false."
  type = bool
  default = null
}

variable "mysql_db_delete_automated_backups" {
  description = "(Optional) Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is true."
  type = bool
  default = null
}

variable "mysql_db_apply_immediately" {
  description = "(Optional) Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon RDS Documentation for more information."
  type = bool
  default = null
}
