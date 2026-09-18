# Lab 02-01 — First Azure Resource with Terraform

> **🟢 Build Lab · Beginner · ~45 min**

## Business scenario
A team has created a resource group manually and now needs a reproducible definition.

## Mission
Create an Azure Resource Group with Terraform using variables and outputs. Prove the result through both Terraform and Azure CLI.

## Workflow
`terraform fmt` → `terraform init` → `terraform validate` → `terraform plan` → review → `terraform apply` → validation.

## Challenge
Change the region and naming inputs without changing the resource block. Explain which values belong in configuration versus environment input.

## Break/Fix
Test either an invalid region or a subscription where the caller lacks the required permission. Capture evidence, diagnose, fix, then re-run validation.

## Cleanup
Destroy only the resources created for this lab.
