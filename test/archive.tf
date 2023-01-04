provider "archive" {}

data "archive_file" "zip" {
  type        = "zip"
  source_file = "${path.module}/python/lambda.py"
  output_path = "${path.module}/python/lambda.zip"
}