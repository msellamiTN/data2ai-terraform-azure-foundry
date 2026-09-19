variable "subscription_id" {
  type     = string
  nullable = false
}

variable "resource_group_name" {
  description = "Existing Resource Group to discover with a data source."
  type        = string
  nullable    = false
}

variable "storage_account_name" {
  description = "Globally unique lowercase storage account name."
  type        = string
  nullable    = false
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must be 3-24 lowercase alphanumeric characters."
  }
}

variable "tags" {
  type = map(string)
  default = {
    academy = "data2ai"
    course  = "terraform-foundations"
    lab     = "02-03"
  }
}
