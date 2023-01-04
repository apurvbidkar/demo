resource "aws_db_instance" "apurv-rds" {
  allocated_storage      = 20
  db_name                = "apurv_rds"
  engine                 = "mysql"
  engine_version         = "5.7"
  multi_az               = true
  instance_class         = "db.t2.micro"
  username               = "apurvbidkar"
  password               = "Apurv123"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.subnet-grp.name
  vpc_security_group_ids = ["${aws_security_group.apurv-SG.id}"]



}