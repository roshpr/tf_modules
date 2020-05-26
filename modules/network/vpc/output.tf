output "vpc_id" {
  value = "${element(concat(aws_vpc.vpc_main.*.id, list("")),0)}"
}
output "vpc_ipv6_cidr" {
  value = "${aws_vpc.vpc_main.ipv6_cidr_block}"
}