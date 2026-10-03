provider "azurerm" {
  features {}
}

# terraform-azure-infra/
# │
# ├── azure-pipelines.yml
# │
# ├── backend.tf
# ├── providers.tf
# ├── versions.tf
# ├── variables.tf
# ├── locals.tf
# ├── main.tf
# ├── outputs.tf
# ├── terraform.tfvars
# ├── .gitignore
# ├── .gitleaks.toml
# ├── .tflint.hcl
# │
# ├── modules/
# │   │
# │   ├── resource-group/
# │   │   ├── main.tf
# │   │   ├── variables.tf
# │   │   └── outputs.tf
# │   │
# │   ├── network/
# │   │   ├── main.tf
# │   │   ├── variables.tf
# │   │   └── outputs.tf
# │   │
# │   ├── nsg/
# │   │   ├── main.tf
# │   │   ├── variables.tf
# │   │   └── outputs.tf
# │   │
# │   ├── nat/
# │   │   ├── main.tf
# │   │   ├── variables.tf
# │   │   └── outputs.tf
# │   │
# │   ├── vm/
# │   │   ├── main.tf
# │   │   ├── variables.tf
# │   │   └── outputs.tf
# │   │
# │   ├── key-vault/
# │   │   ├── main.tf
# │   │   ├── variables.tf
# │   │   └── outputs.tf
# │   │
# │   └── bastion/
# │       ├── main.tf
# │       ├── variables.tf
# │       └── outputs.tf
# │
# └── security/
#     ├── trivy.yaml
#     └── checkov.yaml