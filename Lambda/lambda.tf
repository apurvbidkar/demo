resource "aws_lambda_function" "s3-lambda" {
  filename      = "${path.module}/python/lambda.zip"
  function_name = "s3-lambda"
  role          = aws_iam_role.role.arn
  handler       = "lambda.lambda_handler"
  runtime       = "python3.7"
  #depends_on       = [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role]
}