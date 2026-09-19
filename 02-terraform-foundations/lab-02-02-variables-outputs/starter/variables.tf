variable "subscription_id" {
  description = "Azure subscription ID used by the lab."
  type        = string
  nullable    = false
  validation {
    condition     = can(regex("^[0-9a-fA-F-]{36}$", var.subscription_id))
    error_message = "subscription_id must be a valid Azure subscription GUID."
  }
}

variable "resource_group_name" {
  description = "Name of the Resource Group."
  type        = string
  nullable    = false
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Common resource tags."
  type        = map(string)
  default = {
    academy = "data2ai"
    course  = "terraform-foundations"
    lab     = "02-02"
  }
}
