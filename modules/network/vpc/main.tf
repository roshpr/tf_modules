resource "aws_vpc" "vpc_main" {
  cidr_block = var.vpcsettings[vpc_cidr]
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  assign_generated_ipv6_cidr_block = true
  tag {
    key                 = "Name"
    value               = "var.name"
    propagate_at_launch = true
  }

  dynamic "tag" {
    for_each = var.tags

    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.vpcsettings[vpc_secondary_cidr]
}