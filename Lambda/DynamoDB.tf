resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "newtable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "unique"
  attribute {
    name = "unique"
    type = "S"
  }

  tags = {
    Name = "newtable"
  }

}