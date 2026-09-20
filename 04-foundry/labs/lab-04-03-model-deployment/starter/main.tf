variable "model_name" { type = string }
variable "deployment_name" { type = string }
variable "capacity" { type = number default = 1 }
output "deployment_contract" { value = { model = var.model_name name = var.deployment_name capacity = var.capacity } }
