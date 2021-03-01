# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = var.region_name
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"
  count = 4
  subnet_id = var.vpc_public_subnets[0]
  tags = {
    Name = "Udacity_T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "Udacity_M4" {
#   ami           = var.ec2_ami_id
#   instance_type = "m4.large"
#   count = 2
#   subnet_id = var.vpc_public_subnets[0]
#   tags = {
#     Name = "Udacity_M4"
#   }
# }