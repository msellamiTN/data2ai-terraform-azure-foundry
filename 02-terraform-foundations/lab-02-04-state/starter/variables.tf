variable "subscription_id" {
  type     = string
  nullable = false
}

variable "resource_group_name" {
  type = string
}

variable "storage_account_name" {
  type = string
  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Storage account name must be 3-24 lowercase alphanumeric characters."
  }
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "tags" {
  type = map(string)
  default = {
    academy = "data2ai"
    course  = "terraform-foundations"
    lab     = "02-04"
  }
}
