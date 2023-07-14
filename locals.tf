locals {
  az_names = data.aws_availability_zones.azs.names
  ws       = terraform.workspace == "default" ? "dev" : terraform.workspace
}