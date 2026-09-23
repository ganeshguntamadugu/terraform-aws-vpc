data "aws_availability_zones" "availability" {
  state = "available"
}

data "aws_vpc" "filtering_vpc" {
  filter {
    name   = "tag:Name"
    values = ["Default VPC"]
  }
}