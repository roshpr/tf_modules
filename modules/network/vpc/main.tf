resource "aws_vpc" "vpc_main" {
  cidr_block = var.vpcsettings["vpc_cidr"]
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  assign_generated_ipv6_cidr_block = true
  tags = {
    key                 = "Name"
    value               = "var.name"
    propagate_at_launch = true
  }

//  dynamic "tags" {
//    for_each = var.tags
//
//    content {
//      key                 = tags.key
//      value               = tags.value
//      propagate_at_launch = true
//    }
//  }
}

resource "aws_vpc_ipv4_cidr_block_association" "secondary_cidr" {
  vpc_id     = aws_vpc.vpc_main.id
  cidr_block = var.vpcsettings["vpc_secondary_cidr"]
}