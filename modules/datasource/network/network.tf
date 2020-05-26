data "aws_vpc" "main" {
  tags = {
    deployment_id = var.deployment_id
    deployment_name = var.deployment_name
    owner = var.owner
  }
}