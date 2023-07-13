resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name       = "jhc-tca"
    Location   = "Banglore"
    CostCentre = "JHC1234"
  }
}

# Create subnet in the above VPC
resource "aws_subnet" "main" {
  count = length(local.az_names)
  vpc_id            = aws_vpc.main.id
  availability_zone = local.az_names[count.index]
  cidr_block        = cidrsubnet(var.vpc_cidr,8,count.index)
  tags = {
    Name = "MySubnet-${count.index + 1}"
  }
}
