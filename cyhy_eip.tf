# TODO: Create one (or more) NAT gateway elastic IP in each region
resource "aws_eip" "cyhy_nat_gw_us_east" {
  vpc = true
  tags = "${merge(var.tags, map("Name", "CyHy NATGW us-east"))}"
}
