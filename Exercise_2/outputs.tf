# TODO: Define the output variable for the lambda function.
output "this_lambda_function_output" {
  description = "The ARN of the Lambda Function"
  value       = aws_lambda_function.test_lambda.arn
}