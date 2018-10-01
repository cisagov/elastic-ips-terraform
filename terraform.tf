terraform {
  backend "s3" {
    encrypt = true
    bucket = "ncats-terraform-state-storage"
    dynamodb_table = "terraform-state-lock"
    region = "us-east-1"
    key = "elastic_ips/terraform.tfstate"
  }
}
