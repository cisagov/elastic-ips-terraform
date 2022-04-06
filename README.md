# elastic-ips-terraform #

[![GitHub Build Status](https://github.com/cisagov/elastic-ips-terraform/workflows/build/badge.svg)](https://github.com/cisagov/elastic-ips-terraform/actions)

Terraform configuration that provide AWS elastic IP addresses for use by other
cisagov projects.

## Building ##

Build Terraform-based infrastructure with:

```console
terraform workspace select <your_workspace>
terraform init
terraform apply -var-file=<your_workspace>.tfvars
```

Note that by default, no elastic IP addresses will be created.  To
change this behavior, either update the default values for
`aws_eips_per_region` in `variables.tf` or provide a `-var-file` that
includes your preferred values for `aws_eips_per_region`.

## Destroying ##

Tear down Terraform-based infrastructure with:

```console
terraform workspace select <your_workspace>
terraform init
terraform destroy -var-file=<your_workspace>.tfvars
```

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 3.38 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.38 |
| aws.us-east-2 | ~> 3.38 |
| aws.us-west-1 | ~> 3.38 |
| aws.us-west-2 | ~> 3.38 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.cyhy_us_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.cyhy_us_east_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.cyhy_us_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.cyhy_us_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_eips\_per\_region | The number of elastic IPs to create per AWS region. | `map(number)` | ```{ "us-east-1": 0, "us-east-2": 0, "us-west-1": 0, "us-west-2": 0 }``` | no |
| tags | Tags to apply to all AWS resources created. | `map(string)` | ```{ "Publish Egress": "True" }``` | no |

## Outputs

No outputs.

## Notes ##

Running `pre-commit` requires running `terraform init` in every directory that
contains Terraform code. In this repository, this is only the main directory.

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
