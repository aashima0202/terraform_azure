variable "resource_group_location" {
  default = "eastus"
  description   = "Location of the resource group."
}
variable "rg_dev" {
  default       = "rg_aashima_dev"
}
variable "rg_qa" {
  default       = "rg_aashima_qa"
}
variable "rg_preprod" {
  default       = "preprod_var"
}
variable "rg_prod" {
  default       = "prod_var"
}