output "vpc_id" {
  value = aws_vpc.main.id
}

output "igw_id" {
  value = aws_internet_gateway.igw_main.id
}

# output "az_check" {
#     value = data.aws_availability_zones.availability
# }

# output "filtering_vpc_info" {
#     value = data.aws_vpc.filtering_vpc
# }
