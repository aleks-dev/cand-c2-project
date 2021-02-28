# TODO: Define the variable for aws_region
variable "region_name" {
  description = "Region name"
  type        = string
  default     = "eu-west-1"
}

variable "ec2_ami_id" {
  description = "EC2 AMI instance type"
  type        = string
  default     = "ami-022e8cc8f0d3c52fd"
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["subnet-042a266a9734bf4a7", "subnet-063defb336bf6a590", "subnet-0fd2eab752e067cb0"]
}