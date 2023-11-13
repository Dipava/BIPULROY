resource "aws_security_group" "allow_traffic" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = aws_vpc.main.id

egress      = [
    {
      description      = ""
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      self             = false
      security_groups  = []
      cidr_blocks      = var.egress_cidr
      from_port        = var.egress_source_port
      protocol         = var.egress_protocol
      to_port          = var.egress_destination_port
    },
  ]

ingress     = [
    {
        description      = ""
        ipv6_cidr_blocks = []
        prefix_list_ids  = []
        self             = false
        security_groups  = []
        cidr_blocks      = var.ingress_cidr
        from_port        = var.ingress_source_port
        protocol         = var.ingress_protocol
        to_port          = var.ingress_destination_port
    },
  ]

  tags = merge(
    {
      "Name" = format("%s", var.sg_name)
    },
    var.tags,
  )

}
