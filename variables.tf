variable "ami" {
  description = "AMI id"
  default = "ami-01f87c43e618bf8f0"
  type = string
}

variable "instance_type" {
  description = "EC2 instance type i.e. t2.micro"
  default = "t2.micro"
  type = string
}
