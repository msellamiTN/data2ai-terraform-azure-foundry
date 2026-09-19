variable "subscription_id" { type = string nullable = false }
variable "resource_group_name" { type = string nullable = false }
variable "location" { type = string default = "westeurope" }
variable "tags" {
  type = map(string)
  default = { academy = "data2ai", course = "terraform-foundations", lab = "02-05" }
}
