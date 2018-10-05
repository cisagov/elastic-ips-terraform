# Configure AWS
provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-east-2"
  region = "us-east-2"
}

provider "aws" {
  alias = "us-west-1"
  region = "us-west-1"
}

provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}

# The AWS account ID being used
data "aws_caller_identity" "current" {}
