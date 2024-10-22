### Relation Database Service - RDS

output "mysql_db_arn" {
  description = "The ARN of the RDS instance."
  value = aws_db_instance.mysql_db.arn
}

output "mysql_db_id" {
  description = "RDS DBI resource ID."
  value = aws_db_instance.mysql_db.id
}

output "mysql_db_engine" {
  description = "The database engine."
  value = aws_db_instance.mysql_db.engine
}

output "mysql_db_engine_version" {
  description = "The running version of the database."
  value = aws_db_instance.mysql_db.engine_version
}

output "mysql_db_password" {
  description = "password DB's sensitive"
  value = sensitive(aws_db_instance.mysql_db.password)
}