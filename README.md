# terraform

[![Terraform Actions Status](https://github.com/tmknom/template-terraform-module/workflows/Terraform/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3ATerraform)
[![Shell Script Actions Status](https://github.com/tmknom/template-terraform-module/workflows/Shell%20Script/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3A%22Shell+Script%22)
[![Markdown Actions Status](https://github.com/tmknom/template-terraform-module/workflows/Markdown/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3AMarkdown)
[![YAML Actions Status](https://github.com/tmknom/template-terraform-module/workflows/YAML/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3AYAML)
[![JSON Actions Status](https://github.com/tmknom/template-terraform-module/workflows/JSON/badge.svg)](https://github.com/tmknom/template-terraform-module/actions?query=workflow%3AJSON)
[![GitHub tag](https://img.shields.io/github/tag/tmknom/template-terraform-module.svg)](https://registry.terraform.io/modules/tmknom/name/provider)
[![License](https://img.shields.io/github/license/tmknom/template-terraform-module.svg)](https://opensource.org/licenses/Apache-2.0)The following files are expected to be found:

<img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="600px">


Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. Terraform can manage existing and popular service providers as well as custom in-house solutions.

The key features of Terraform are:

- **Infrastructure as Code**: Infrastructure is described using a high-level configuration syntax. This allows a blueprint of your datacenter to be versioned and treated as you would any other code. Additionally, infrastructure can be shared and re-used.

- **Execution Plans**: Terraform has a "planning" step where it generates an execution plan. The execution plan shows what Terraform will do when you call apply. This lets you avoid any surprises when Terraform manipulates infrastructure.

- **Resource Graph**: Terraform builds a graph of all your resources, and parallelizes the creation and modification of any non-dependent resources. Because of this, Terraform builds infrastructure as efficiently as possible, and operators get insight into dependencies in their infrastructure.

- **Change Automation**: Complex changesets can be applied to your infrastructure with minimal human interaction. With the previously mentioned execution plan and resource graph, you know exactly what Terraform will change and in what order, avoiding many possible human errors.

For more information, refer to the [What is Terraform?](https://www.terraform.io/intro) page on the Terraform website.



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
