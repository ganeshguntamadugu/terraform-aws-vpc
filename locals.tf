locals {
  resource_name = "${var.project_name}-${var.environment}"
  availability = slice(data.aws_availability_zones.availability.names, 0, 2)
}