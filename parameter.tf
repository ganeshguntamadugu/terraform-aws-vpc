resource "aws_ssm_parameter" "vpc_id" {
    count = var.parameter_store_required? 1:0
    name  = "/${var.project_name}/${var.environment}/vpc-id"
    type  = "String"
    value = aws_vpc.main.id

    tags = merge(
        var.common_tags,
        var.parameter_tags,
        {
            Name = "${local.resource_name}-vpc-id"
        }
    )
}