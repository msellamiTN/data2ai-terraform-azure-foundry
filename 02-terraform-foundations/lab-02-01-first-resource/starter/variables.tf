variable "resource_group_name" {
  type        = string
  description = "Resource group created by the lab"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "westeurope"
}

variable "tags" {
  type    = map(string)
  default = {}
}
