variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "Choose CIDR block for VPC"
}

variable "region" {
  default = "us-east-1"
  type    = string
}