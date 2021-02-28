# TODO: Define the variable for aws_region
variable "region_name" {
  description = "Region name"
  type        = string
  default     = "eu-west-1"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}

variable "lambda_handler_name" {
  default = "lambda_handler"
}