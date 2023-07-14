variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "Choose CIDR block for VPC"
}

variable "region" {
  default = "us-east-1"
  type    = string
}

variable "ingress_rules" {
  type = map(object({
    port  = string
    cidrs = list(string)
  }))
}

variable "ami" {
  default = "ami-04823729c75214919"
}