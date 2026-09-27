data "aws_availability_zones" "availability" {
  state = "available"
}

data "aws_vpc" "filtering_vpc" {
  filter {
    name   = "tag:Name"
    values = ["Default VPC"]
  }
}

data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.filtering_vpc.id
}