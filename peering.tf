resource "aws_vpc_peering_connection" "peering" {
  count = var.is_peering_required? 1:0
  vpc_id        = aws_vpc.main.id #Requester
  peer_vpc_id   = data.aws_vpc.filtering_vpc.id #Accepter
  
  auto_accept   = true

  tags = merge(
    var.common_tags,
    var.peering_tags,
    {
        Name = "${local.resource_name}-default"
    }
  )
}