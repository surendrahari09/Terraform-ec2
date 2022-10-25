# terraform

[![Terraform Actions Status](https://github.com/tmknom/template-terraform-module/workflows/Terraform/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3ATerraform)
[![Shell Script Actions Status](https://github.com/tmknom/template-terraform-module/workflows/Shell%20Script/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3A%22Shell+Script%22)
[![Markdown Actions Status](https://github.com/tmknom/template-terraform-module/workflows/Markdown/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3AMarkdown)
[![YAML Actions Status](https://github.com/tmknom/template-terraform-module/workflows/YAML/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3AYAML)
[![JSON Actions Status](https://github.com/tmknom/template-terraform-module/workflows/JSON/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3AJSON)
[![GitHub tag](https://img.shields.io/github/tag/tmknom/template-terraform-module.svg)](https://registry.terraform.io/modules/tmknom/name/provider)
[![License](https://img.shields.io/github/license/tmknom/template-terraform-module.svg)](https://opensource.org/licenses/Apache-2.0)The following files are expected to be found:

terraform.tf — Contains the terraform {} configuration block. This will set a minimum terraform version and configure the backend.
providers.tf — Contains the provider {} blocks indicating the version of each provider needed.
main.tf — The infrastructure code. As this file grows, consider breaking it up into smaller, well-named files. For example, a circleci.tf file could contain the IAM user, group, and policies needed for a CircleCI build to run.
variables.tf — This almost always has, at minimum, a region and environment variable set.


The following will initialize the local [terraform][tfhome] configuration without
creating a bucket for storing state data.

```sh
terraform init
```


### Running Terraform

Run the following to ensure ***terraform*** will only perform the expected
actions:

```sh
terraform plan
```

Run the following to apply the configuration to the target Google Cloud
environment:

```sh
terraform apply
```

### Tearing Down the Terraformed Cluster

Run the following to verify that ***terraform*** will only impact the expected
nodes and then tear down the cluster.

```sh
terraform plan
terraform destroy
```
