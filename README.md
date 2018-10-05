# elastic-ips-terraform
Terraform files that provide AWS elastic IP addresses for use by other dhs-ncats projects.

## Building ##

Build Terraform-based infrastructure with:
```
cd terraform
terraform workspace select <your_workspace>
terraform init
terraform apply -var-file=<your_workspace>.yml
```

Note that by default, no elastic IP addresses will be created.  To change this behavior, either update the default values for `aws_eips_per_region` in `variables.tf` or provide a `-var-file` that includes your preferred values for `aws_eips_per_region`.

## Destroying ##

Tear down Terraform-based infrastructure with:
```
cd terraform
terraform workspace select <your_workspace>
terraform init
terraform destroy -var-file=<your_workspace>.yml
```
