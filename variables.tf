variable "ami_id" {
  description = "AMI id"
  default     = "ami-01f87c43e618bf8f0"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type i.e. t2.micro"
  default     = "t2.micro"
  type        = string
}

variable "main_vpc_cidr" {
  description = "Main vpc cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ami_key_pair_name" {
  description = "key pair name"
  type        = string
  default     = "tf-aws"
}
