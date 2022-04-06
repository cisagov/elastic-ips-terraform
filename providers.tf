# Configure AWS
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = var.tags
  }
}

provider "aws" {
  alias = "us-east-2"

  region = "us-east-2"

  default_tags {
    tags = var.tags
  }
}

provider "aws" {
  alias = "us-west-1"

  region = "us-west-1"

  default_tags {
    tags = var.tags
  }
}

provider "aws" {
  alias = "us-west-2"

  region = "us-west-2"

  default_tags {
    tags = var.tags
  }
}
