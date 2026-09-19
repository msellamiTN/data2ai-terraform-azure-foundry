# Challenge Contract — State

Build the same infrastructure in a fresh workspace and produce evidence that proves State tracks the intended resources.

Requirements:
- create a Resource Group and Storage Account;
- use `terraform state list` and `terraform state show`;
- explain the difference between configuration and State;
- create a controlled Azure-side drift;
- detect it with `terraform plan`;
- reconcile the drift with Terraform;
- run the validator and obtain `RESULT: PASS`;
- destroy the temporary environment.

Do not edit `terraform.tfstate` manually.
