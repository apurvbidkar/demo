resource "aws_s3_bucket" "apurv-bucket1" {
   bucket = "apurv-bidkar-bucket"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
}