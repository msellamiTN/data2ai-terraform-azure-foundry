variable "resource_group_name" {
  description = "Name of the lab resource group."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Lab tags."
  type        = map(string)
  default = {
    environment = "lab"
    managed_by  = "terraform"
  }
}
