variable "ec2_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ec2_instance_name" {
  type = string
}

variable "ec2_ami_id" {
  type = string
  # default = "ami-053b0d53c279acc90"
}