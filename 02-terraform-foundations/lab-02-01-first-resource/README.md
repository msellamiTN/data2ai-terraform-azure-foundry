# Lab 02-01 — First Azure Resource with Terraform

> 🟢 Gold Standard Build Lab — Beginner — 60–90 min

## Mission

Build your first Terraform project from an empty learner workspace. Create and edit the files yourself, execute commands, read their outputs, validate Azure independently, break the configuration, diagnose the failure, fix it, and complete the challenge.

## Learning loop

```text
LEARN → BUILD → RUN → READ OUTPUT → VALIDATE → BREAK → FIX → CHALLENGE → SOLUTION → CLEANUP
```

## 1. Prerequisites

```powershell
git --version
az version
terraform version
az login
az account show
az account list --output table
```

Select the training subscription:

```powershell
az account set --subscription "<SUBSCRIPTION_ID>"
az account show --query "{name:name,id:id,tenantId:tenantId}" --output table
```

**Checkpoint:** verify the displayed subscription before creating anything.

## 2. Clone and enter the lab

```powershell
git clone https://github.com/msellamiTN/data2ai-terraform-azure-foundry.git
cd data2ai-terraform-azure-foundry
cd 02-terraform-foundations/lab-02-01-first-resource
Get-Location
```

## 3. Create your workspace

```powershell
New-Item -ItemType Directory -Name student-work -Force
cd student-work
code .
```

Do not work in `solution/`.

## 4. BUILD — Create main.tf

Create `main.tf` and enter:

```hcl
terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}
```

Run:

```powershell
terraform fmt
terraform init
terraform validate
```

### Stop and read

Find the provider installation message and the validation result. Write down:

- Which provider was installed?
- What does `terraform init` prepare?
- What does `terraform validate` prove?
- What does it not prove?

## 5. BUILD — Add the resource

Edit `main.tf` and add:

```hcl
resource "azurerm_resource_group" "lab" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}
```

Run:

```powershell
terraform validate
```

Read the diagnostic. The missing variables are intentional at this stage.

## 6. BUILD — Create variables.tf

Create `variables.tf`:

```hcl
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tags" {
  description = "Tags applied to the resource group"
  type        = map(string)
  default     = {}
}
```

Run:

```powershell
terraform fmt
terraform validate
```

Expected:

```text
Success! The configuration is valid.
```

## 7. BUILD — Create terraform.tfvars

Create `terraform.tfvars`:

```hcl
resource_group_name = "rg-data2ai-02-01-lab"
location            = "westeurope"

tags = {
  environment = "lab"
  managed_by  = "terraform"
  course      = "terraform-foundations"
  lab         = "02-01"
}
```

Never place credentials, PATs, tokens or client secrets in this file.

## 8. PLAN — Read before applying

Run:

```powershell
terraform fmt
terraform validate
terraform plan
```

Find:

```text
Plan: X to add, Y to change, Z to destroy.
```

Record:

- resource type;
- Terraform address;
- Azure name;
- region;
- add/change/destroy counts.

Only continue if the plan matches the mission.

Capture evidence:

```powershell
New-Item -ItemType Directory -Name evidence -Force
terraform plan | Tee-Object evidence/04-plan.txt
```

## 9. APPLY — Create Azure infrastructure

Run:

```powershell
terraform apply
```

Review the plan and confirm `yes`.

Expected final pattern:

```text
Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

Capture evidence:

```powershell
terraform apply | Tee-Object evidence/05-apply.txt
```

## 10. INSPECT state

Run:

```powershell
terraform state list
terraform state show azurerm_resource_group.lab
terraform show
```

Find the resource name, location, ID and tags. Explain how the Terraform address maps to the Azure resource.

## 11. BUILD — Create outputs.tf

Create `outputs.tf`:

```hcl
output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.lab.name
}

output "resource_group_id" {
  description = "Resource ID of the created resource group"
  value       = azurerm_resource_group.lab.id
}

output "resource_group_location" {
  description = "Azure location"
  value       = azurerm_resource_group.lab.location
}
```

Run:

```powershell
terraform fmt
terraform validate
terraform apply
terraform output
```

Read the outputs and compare them with your configuration and state.

## 12. Independent Azure validation

Run:

```powershell
az group show `
  --name rg-data2ai-02-01-lab `
  --query "{name:name,location:location,tags:tags}" `
  --output json
```

Compare three sources:

```text
Terraform configuration ↔ Terraform state ↔ Azure
```

They should describe the same deployed resource.

## 13. Automated validation

From the lab directory, run the supplied validation script. It should verify the real contract: authentication, subscription, resource existence, name, location, tags, Terraform state and outputs.

If a check fails:

```text
STOP → READ FAILURE → INSPECT EVIDENCE → FIX → VALIDATE AGAIN
```

## 14. BREAK/FIX — Invalid region

Edit `terraform.tfvars` and deliberately change the location to:

```hcl
location = "invalid-region"
```

Run:

```powershell
terraform plan
```

Do not immediately repair it. Record:

- **Symptom:** which command failed?
- **Evidence:** what diagnostic was returned?
- **Diagnosis:** which layer failed?
- **Root cause:** why is the region invalid?
- **Fix:** restore `westeurope`.
- **Validation:** run `terraform fmt`, `terraform validate`, then `terraform plan`.

Use this method:

```text
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention
```

## 15. CHALLENGE — TEST environment

Do not open `solution/`.

Create a second configuration for:

```text
Resource Group: rg-data2ai-02-01-test
Location: westeurope
environment: test
managed_by: terraform
course: terraform-foundations
lab: 02-01
```

Requirements:

- use variables;
- use tags;
- expose outputs;
- pass validation;
- produce the expected plan;
- deploy successfully;
- independently validate Azure;
- capture evidence;
- clean up.

## 16. SOLUTION

Only after the challenge, inspect `solution/` and compare project structure, resource design, variables, outputs, validation and cleanup. The goal is to understand engineering decisions, not copy text.

## 17. CLEANUP

Preview destruction:

```powershell
terraform plan -destroy
```

Then:

```powershell
terraform destroy
```

Confirm `yes` and verify the temporary Resource Group is gone.

## 18. Definition of done

- [ ] I created the required Terraform files myself.
- [ ] I ran fmt, init, validate, plan and apply.
- [ ] I read the plan before applying.
- [ ] I inspected state and outputs.
- [ ] I independently validated Azure.
- [ ] I completed Break/Fix.
- [ ] I completed the challenge before opening the solution.
- [ ] I captured evidence.
- [ ] I cleaned up Azure resources.

## Knowledge Check

1. What does `terraform init` prepare?
2. What does `terraform validate` prove?
3. What does the plan tell you before apply?
4. Why does Terraform use state?
5. What is the difference between a resource type and resource address?
6. Why validate Azure independently?
7. What was the Break/Fix root cause?
8. How could you prevent the same failure in a production project?
