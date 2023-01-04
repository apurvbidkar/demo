resource "aws_db_subnet_group" "subnet-grp" {
  name       = "apurv-grp-rds"
  subnet_ids = ["${aws_subnet.subnet1.id}", "${aws_subnet.subnet2.id}"]
  tags = {
    Name = "subnet-grp"
  }
}