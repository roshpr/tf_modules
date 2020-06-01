variable "name" {
  default = "test"
}
variable "vpcsettings" {
  type = map
  default = {
    "vpc_cidr" = "10.10.0.0/16"
    "vpc_secondary_cidr" = "20.20.20.0/24"
  }
}
variable "tags" {
  type = map
  default = {
    "deployment_id" = "1232"
  }
}
variable "enable_dns_hostnames" {
  description = "should be true if you want to use private DNS within the VPC"
  default = true
}
variable "enable_dns_support" {
  description = "should be true if you want to use private DNS within the VPC"
  default = true
}
variable "vpc_secondary_cidr" { default = "100.64.0.0/21"}