## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_db_instance.mysql_db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.db_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | (Optional) The name of the DB subnet group. If omitted, Terraform will assign a random, unique name. | `string` | `""` | no |
| <a name="input_db_subnets_id"></a> [db\_subnets\_id](#input\_db\_subnets\_id) | value | `list(string)` | `[]` | no |
| <a name="input_mysql_db_allocated_storage"></a> [mysql\_db\_allocated\_storage](#input\_mysql\_db\_allocated\_storage) | (Required) unless a snapshot\_identifier or replicate\_source\_db is provided, The allocated storage in gibibytes. If max\_allocated\_storage is configured, this argument represents the initial storage allocation and differences from the configuration will be ignored automatically when Storage Autoscaling occurs. If replicate\_source\_db is set, the value is ignored during the creation of the instance. | `number` | `null` | no |
| <a name="input_mysql_db_apply_immediately"></a> [mysql\_db\_apply\_immediately](#input\_mysql\_db\_apply\_immediately) | (Optional) Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon RDS Documentation for more information. | `bool` | `null` | no |
| <a name="input_mysql_db_delete_automated_backups"></a> [mysql\_db\_delete\_automated\_backups](#input\_mysql\_db\_delete\_automated\_backups) | (Optional) Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is true. | `bool` | `null` | no |
| <a name="input_mysql_db_engine"></a> [mysql\_db\_engine](#input\_mysql\_db\_engine) | (Required) unless a snapshot\_identifier or replicate\_source\_db is provided, The database engine to use. For supported values, see the Engine parameter in API action CreateDBInstance. Note that for Amazon Aurora instances the engine must match the DB cluster's engine'. For information on the difference between the available Aurora MySQL engines see Comparison between Aurora MySQL 1 and Aurora MySQL 2 in the Amazon RDS User Guide. | `string` | `""` | no |
| <a name="input_mysql_db_engine_version"></a> [mysql\_db\_engine\_version](#input\_mysql\_db\_engine\_version) | (Optional) The engine version to use. If auto\_minor\_version\_upgrade is enabled, you can provide a prefix of the version such as 8.0 (for 8.0.36). The actual engine version used is returned in the attribute engine\_version\_actual, see Attribute Reference below. For supported values, see the EngineVersion parameter in API action CreateDBInstance. Note that for Amazon Aurora instances the engine version must match the DB cluster's engine version'. | `string` | `""` | no |
| <a name="input_mysql_db_identifier"></a> [mysql\_db\_identifier](#input\_mysql\_db\_identifier) | (Optional) The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier. Required if restore\_to\_point\_in\_time is specified. | `string` | `""` | no |
| <a name="input_mysql_db_instance_class"></a> [mysql\_db\_instance\_class](#input\_mysql\_db\_instance\_class) | (Required) The instance type of the RDS instance. | `string` | `""` | no |
| <a name="input_mysql_db_name"></a> [mysql\_db\_name](#input\_mysql\_db\_name) | (Optional) The name of the database to create when the DB instance is created. If this parameter is not specified, no database is created in the DB instance. Note that this does not apply for Oracle or SQL Server engines. See the AWS documentation for more details on what applies for those engines. If you are providing an Oracle db name, it needs to be in all upper case. Cannot be specified for a replica. | `string` | `""` | no |
| <a name="input_mysql_db_parameter_group_name"></a> [mysql\_db\_parameter\_group\_name](#input\_mysql\_db\_parameter\_group\_name) | (Optional) Name of the DB parameter group to associate. | `string` | `""` | no |
| <a name="input_mysql_db_password"></a> [mysql\_db\_password](#input\_mysql\_db\_password) | (Required) unless manage\_master\_user\_password is set to true or unless a snapshot\_identifier or replicate\_source\_db is provided or manage\_master\_user\_password is set. Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Cannot be set if manage\_master\_user\_password is set to true. | `string` | `""` | no |
| <a name="input_mysql_db_skip_final_snapshot"></a> [mysql\_db\_skip\_final\_snapshot](#input\_mysql\_db\_skip\_final\_snapshot) | (Optional) Determines whether a final DB snapshot is created before the DB instance is deleted. If true is specified, no DBSnapshot is created. If false is specified, a DB snapshot is created before the DB instance is deleted, using the value from final\_snapshot\_identifier. Default is false. | `bool` | `null` | no |
| <a name="input_mysql_db_storage_encrypted"></a> [mysql\_db\_storage\_encrypted](#input\_mysql\_db\_storage\_encrypted) | (Optional) Specifies whether the DB instance is encrypted. Note that if you are creating a cross-region read replica this field is ignored and you should instead declare kms\_key\_id with a valid ARN. The default is false if not specified. | `string` | `null` | no |
| <a name="input_mysql_db_storage_type"></a> [mysql\_db\_storage\_type](#input\_mysql\_db\_storage\_type) | (Optional) One of standard (magnetic), gp2 (general purpose SSD), gp3 (general purpose SSD that needs iops independently) io1 (provisioned IOPS SSD) or io2 (block express storage provisioned IOPS SSD). The default is io1 if iops is specified, gp2 if not. | `string` | `""` | no |
| <a name="input_mysql_db_username"></a> [mysql\_db\_username](#input\_mysql\_db\_username) | (Required) unless a snapshot\_identifier or replicate\_source\_db is provided, Username for the master DB user. Cannot be specified for a replica. | `string` | `""` | no |
| <a name="input_tags_all"></a> [tags\_all](#input\_tags\_all) | (Optional) A mapping of tags which should be assigned to the AWS services, the tag is important for the costs for environment | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_mysql_db_arn"></a> [mysql\_db\_arn](#output\_mysql\_db\_arn) | The ARN of the RDS instance. |
| <a name="output_mysql_db_engine"></a> [mysql\_db\_engine](#output\_mysql\_db\_engine) | The database engine. |
| <a name="output_mysql_db_engine_version"></a> [mysql\_db\_engine\_version](#output\_mysql\_db\_engine\_version) | The running version of the database. |
| <a name="output_mysql_db_id"></a> [mysql\_db\_id](#output\_mysql\_db\_id) | RDS DBI resource ID. |
