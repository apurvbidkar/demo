resource "aws_db_parameter_group" "default" {
  name        = "parameter-grp-rds"
  description = "Terraform example parameter group for mysql5.6"
  family      = "mysql5.7"
  parameter {
    name  = "character_set_server"
    value = "utf8"
  }
  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}