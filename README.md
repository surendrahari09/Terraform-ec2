The following files are expected to be found:

terraform.tf — Contains the terraform {} configuration block. This will set a minimum terraform version and configure the backend.
providers.tf — Contains the provider {} blocks indicating the version of each provider needed.
main.tf — The infrastructure code. As this file grows, consider breaking it up into smaller, well-named files. For example, a circleci.tf file could contain the IAM user, group, and policies needed for a CircleCI build to run.
variables.tf — This almost always has, at minimum, a region and environment variable set.


Initializing Terraform
The following will initialize the local terraform configuration without
creating a bucket for storing state data.

terraform init

Running Terraform
Run the following to ensure terraform will only perform the expected
actions:

```sh
terraform plan
```


Run the following to apply the configuration to the target Google Cloud
environment:

```sh
terraform apply
```



Tearing Down the Terraformed Cluster
Run the following to verify that terraform will only impact the expected
nodes and then tear down the cluster.

terraform plan
terraform destroy


```sh
terraform apply
```
