############################################################################################################
#############################            RDS DATABASE              #########################################
############################################################################################################
#Pre-requisite for association with private subnets
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.db_subnets_id
  tags_all   = var.tags_all
}

resource "aws_db_instance" "mysql_db" {
  allocated_storage        = var.mysql_db_allocated_storage
  identifier               = var.mysql_db_identifier
  db_name                  = var.mysql_db_name
  engine                   = var.mysql_db_engine
  engine_version           = var.mysql_db_engine_version
  instance_class           = var.mysql_db_instance_class
  storage_type             = var.mysql_db_storage_type
  storage_encrypted        = var.mysql_db_storage_encrypted
  db_subnet_group_name     = aws_db_subnet_group.db_subnet_group.name
  username                 = var.mysql_db_username
  password                 = var.mysql_db_password
  parameter_group_name     = var.mysql_db_parameter_group_name
  skip_final_snapshot      = var.mysql_db_skip_final_snapshot
  delete_automated_backups = var.mysql_db_delete_automated_backups
  apply_immediately        = var.mysql_db_apply_immediately
  tags_all                 = var.tags_all
}