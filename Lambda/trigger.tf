resource "aws_s3_bucket_notification" "aws-lambda-trigger" {
  bucket = aws_s3_bucket.apurv-bucket.id
  lambda_function {
    lambda_function_arn = aws_lambda_function.s3-lambda.arn
    events              = ["s3:ObjectCreated:*"]

  }
}
resource "aws_lambda_permission" "test" {
  statement_id  = "AllowS3Invoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.s3-lambda.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = "arn:aws:s3:::${aws_s3_bucket.apurv-bucket.id}"
}
output "arn" {
  value = aws_lambda_function.s3-lambda.arn
}