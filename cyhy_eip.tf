# TODO: Find a good way to reduce the duplication here
resource "aws_eip" "cyhy_us_east_1" {
  count = "${var.aws_eips_per_region["us-east-1"]}"
  provider = "aws.us-east-1"
  vpc = true
  tags = "${merge(var.tags, map("Name", "CyHy EIP (us-east-1)"))}"
}

resource "aws_eip" "cyhy_us_east_2" {
  count = "${var.aws_eips_per_region["us-east-2"]}"
  provider = "aws.us-east-2"
  vpc = true
  tags = "${merge(var.tags, map("Name", "CyHy EIP (us-east-2)"))}"
}

resource "aws_eip" "cyhy_us_west_1" {
  count = "${var.aws_eips_per_region["us-west-1"]}"
  provider = "aws.us-west-1"
  vpc = true
  tags = "${merge(var.tags, map("Name", "CyHy EIP (us-west-1)"))}"
}

resource "aws_eip" "cyhy_us_west_2" {
  count = "${var.aws_eips_per_region["us-west-2"]}"
  provider = "aws.us-west-2"
  vpc = true
  tags = "${merge(var.tags, map("Name", "CyHy EIP (us-west-2)"))}"
}
