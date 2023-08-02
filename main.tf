terraform {
  backend "s3" {
    bucket = "terraform-poc-12345"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    #dynamodb_table  = "terraform-poc"
  }
}
provider "aws" {
  region = "ap-south-1"
}
#resource "aws_instance" "test-instance" {
# tags = {
#   Name = "test-instance"
#  }
# ami           = "ami-0607784b46cbe5816"
#  instance_type = "t2.micro"
#}

#  resource "aws_s3_bucket" "test" {
#    bucket_prefix = "my-terraform-s3-bucket-"
#    acl = "private"
#    versioning {
#      enabled = true
#    }
#  }

module "my_ec2_instance" {
  source = "./sample-ec2-module"

  ec2_instance_type   = "t3.micro"
  ec2_instance_name   = "gem-ec2-instance"
  #number_of_instances =  1
  ec2_ami_id          = "ami-0f5ee92e2d63afc18"
}

output "instance_id" {
  value = module.my_ec2_instance.ec2_instance_id
}

module "my_s3_bucket" {
    source = "./sample-s3-module"

    aws-s3_bucket = "gem-s3-bucket-01234"
}