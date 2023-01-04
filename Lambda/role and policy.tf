resource "aws_iam_role_policy" "lambda_policy" {
  name   = "lambda_policy"
  role   = aws_iam_role.role.id
  policy = file("policy.json")
}
resource "aws_iam_role" "role" {
  name               = "myrole"
  assume_role_policy = file("assume_role_policy.json")

}
# resource "aws_iam_role_policy_attachment" "attach_iam_policy_to_iam_role" {
# role       = aws_iam_role.role.name
# policy_arn = aws_iam_role_policy.lambda_policy.arn
# }