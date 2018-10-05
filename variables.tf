variable "aws_eips_per_region" {
  type = "map"
  description = "The number of elastic IPs to create per AWS region."
  # NOTE: Currently limited to: us-east-1, us-east-2, us-west-1, us-west-2
  default = {
    us-east-1 = 0
    us-east-2 = 0
    us-west-1 = 0
    us-west-2 = 0
  }
}

variable "tags" {
  type = "map"
  description = "Tags to apply to all AWS resources created"
  default = {
    "Publish Egress" = "True"
  }
}
