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
  validation {
    condition     = can(regex("^[a-zA-Z0-9._()-]{1,90}$", var.resource_group_name))
    error_message = "resource_group_name contains unsupported characters or is too long."
  }
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
