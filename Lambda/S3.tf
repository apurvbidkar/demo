resource "aws_s3_bucket" "apurv-bucket" {
  bucket = "apurv-bucket1"

  tags = {
    Name = "apurv-bucket1"
  }
}

resource "aws_s3_bucket_acl" "apurv" {
  bucket = aws_s3_bucket.apurv-bucket.id
  acl    = "private"
}
