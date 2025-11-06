variable "key_pair" {
  description = "The name of the key pair to use for the instance"
  type        = string
}

variable "security_group_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
}

variable "instance_type_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
}

/*
variable "ami_name" {
  description = "The name of the key pair to use for the instance"
  type        = string
} */

variable "vpc_cidr" {
  description = "provide the cidr of vpc"
  type        = string
}

variable "subnet_cidr" {
  description = "provide the cidr of subnet"
  type        = string
}