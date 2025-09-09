variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "subnet_id" {
  description = "The subnet ID for the EC2 instance"
  type        = string
}


variable "vpc_id" {
  description = "The ID of the VPC to deploy the EC2 instance into"
  type        = string
}
