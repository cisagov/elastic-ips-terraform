# TODO: Find a good way to reduce the duplication here
resource "aws_eip" "cyhy_us_east_1" {
  count = "${var.aws_eips_per_region["us-east-1"]}"
  # us-east-1 is the default provider, so there is no need to specify
  # a provider here
  vpc = true
  tags = "${merge(var.tags, map("Name", format("CyHy EIP us-east-1_%d", count.index+1)))}"

  # We want these EIPs to stick around for a long time so that our outbound
  # IP footprint does not change very often
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_eip" "cyhy_us_east_2" {
  count = "${var.aws_eips_per_region["us-east-2"]}"
  provider = "aws.us-east-2"
  vpc = true
  tags = "${merge(var.tags, map("Name", format("CyHy EIP us-east-2_%d", count.index+1)))}"

  # We want these EIPs to stick around for a long time so that our outbound
  # IP footprint does not change very often
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_eip" "cyhy_us_west_1" {
  count = "${var.aws_eips_per_region["us-west-1"]}"
  provider = "aws.us-west-1"
  vpc = true
  tags = "${merge(var.tags, map("Name", format("CyHy EIP us-west-1_%d", count.index+1)))}"

  # We want these EIPs to stick around for a long time so that our outbound
  # IP footprint does not change very often
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_eip" "cyhy_us_west_2" {
  count = "${var.aws_eips_per_region["us-west-2"]}"
  provider = "aws.us-west-2"
  vpc = true
  tags = "${merge(var.tags, map("Name", format("CyHy EIP us-west-2_%d", count.index+1)))}"

  # We want these EIPs to stick around for a long time so that our outbound
  # IP footprint does not change very often
  lifecycle {
    prevent_destroy = true
  }
}
