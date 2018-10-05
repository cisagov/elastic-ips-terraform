variable "aws_eips_per_region" {
  type = "map"
  description = "The number of elastic IPs to create per AWS region."
  default = {}
  # NOTE: Currently limited to: us-east-1, us-east-2, us-west-1, us-west-2
  # Example:
  #  aws_regions = { us-east-1 = 4, us-east-2 = 4, us-west-1 = 4, us-west-2 = 4 }
}

variable "tags" {
  type = "map"
  description = "Tags to apply to all AWS resources created"
  default = {}
}
