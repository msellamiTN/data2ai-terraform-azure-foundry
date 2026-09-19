# Data2AI — Validation Environment

This directory defines the reproducible local environment used by the Academy QA workflow.

## Objectives
- local-qa: Terraform formatting, initialization without a backend, validation, and repository checks.
- azure-qa: Azure authentication and resource-level validation when Azure credentials are available.

## Required tools
- Git
- Terraform >= 1.6
- Azure CLI
- PowerShell 7
- Bash

## Setup
PowerShell: pwsh ./00-onboarding/environment/setup.ps1
Bash: bash ./00-onboarding/environment/setup.sh

Validate the environment with:
PowerShell: pwsh ./00-onboarding/environment/validate-environment.ps1
Bash: bash ./00-onboarding/environment/validate-environment.sh

## Terraform QA
From a Terraform lab:
terraform fmt -check -recursive
terraform init -backend=false
terraform validate

Azure-connected validation must use a subscription intended for training/QA.

## Security
Never commit passwords, client secrets, private keys, tokens, or credentials.

## Definition of Done
The environment is ready when the required commands are available, Terraform is >= 1.6, Azure CLI is installed, and Terraform fmt/init/validate can execute.
