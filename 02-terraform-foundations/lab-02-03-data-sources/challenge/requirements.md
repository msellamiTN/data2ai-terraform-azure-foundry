# Challenge Contract — Data Sources

Use a different pre-existing Resource Group.

Requirements:
- no Resource Group resource may be created;
- use `data.azurerm_resource_group.target`;
- create one Storage Account in the discovered RG;
- do not hard-code the RG location;
- change only input values for the alternate environment;
- validate with Terraform and Azure CLI;
- capture evidence and clean up only the Storage Account.

Do not delete or modify the pre-existing Resource Group.
