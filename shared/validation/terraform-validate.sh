#!/usr/bin/env bash
set -euo pipefail
terraform fmt -check -recursive
terraform init -backend=false -input=false
terraform validate
echo "PASS: Terraform configuration contract validated."
